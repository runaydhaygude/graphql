package com.runaydhaygude.graphql.controller;

import com.runaydhaygude.graphql.data.Customer;
import com.runaydhaygude.graphql.data.CustomerRepository;
import org.springframework.graphql.data.method.annotation.Argument;
import org.springframework.graphql.data.method.annotation.MutationMapping;
import org.springframework.graphql.data.method.annotation.QueryMapping;
import org.springframework.stereotype.Controller;

@Controller
public class CustomerController {

    private final CustomerRepository customerRepository;

    public CustomerController(CustomerRepository customerRepository) {
        this.customerRepository = customerRepository;
    }

    /* we match and map below endpoints to graphql Query & Mutation schema */
    @QueryMapping
    public Iterable<Customer> customers() {
        return customerRepository.findAll();
    }

    @QueryMapping
    public Customer customerById(@Argument Long id) {
        return customerRepository.findById(id).orElseThrow();
    }

    @QueryMapping
    public Customer customerByEmail(@Argument String email) {
        return customerRepository.findCustomerByEmail(email);
    }


    @MutationMapping
    public Customer addCustomer(@Argument(name = "input") CustomerInput customerInput) {
        return customerRepository.save(customerInput.getCustomerEntity());
    }
}

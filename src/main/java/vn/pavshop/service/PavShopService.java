package vn.pavshop.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import vn.pavshop.entity.Customer;
import vn.pavshop.repository.CustomersRepository;

import java.util.Optional;

@Service
public class PavShopService  implements UserDetailsService  {

    @Autowired
    CustomersRepository customersRepository;

    @Override
    public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException{
        Optional<Customer> customer = Optional.ofNullable(customersRepository.findCustomersLogin(id));
        final  Customer  customerLogin = new Customer();
        customerLogin.setEnabled(customer.get().getEnabled());
        customerLogin.setId(customer.get().getId());
        customerLogin.setEmail(customer.get().getEmail());
        customerLogin.setPassword(customer.get().getPassword());
        customerLogin.setFullname(customer.get().getFullname());
        customerLogin.setRoleId(customer.get().getRoleId());
        return customerLogin;
    }


}

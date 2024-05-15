package ua.com.kisit2024.restaurant.service;

import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.springframework.stereotype.Service;
import ua.com.kisit2024.restaurant.entity.Clients;
import ua.com.kisit2024.restaurant.entity.Users;
import ua.com.kisit2024.restaurant.repository.ClientsRepository;
import ua.com.kisit2024.restaurant.repository.UsersRepository;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UsersRepository usersRepository;
    private final ClientsRepository clientsRepository;

    public boolean getLogicByUsername(String username){
        return (!usersRepository.findAllByUsername(username).isEmpty()) ? true : false;
    }

    public Users saveNewUserToDB(Users user){
        return usersRepository.save(user);
    }

    public Clients saveNewClientToDB(Clients client){
        return clientsRepository.save(client);
    }

    public boolean getLogicByUsernameAndPassword(String username, String password){
        return (!usersRepository.findAllByUsernameAndPassword(username, password).isEmpty());
    }

    public Users getUserByUsername(String username){
        return usersRepository.findAllByUsername(username).get(0);
    }

    public Optional<Users> getUserById(Long id){
        return usersRepository.findById(id);
    }

    public Clients getClientById(Long id){
        return clientsRepository.findById(id).get();
    }

}

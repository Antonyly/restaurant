package ua.com.kisit2024.restaurant.entity;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Set;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name = "clients")
public class Clients {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;

    @Column(name = "first_name")
    private String username;
    @Column(name = "last_name")
    private String lastname;

//    @Email
    private String email;
    private int phone;

    @OneToOne
    @MapsId
    @MapKey
    @JoinColumn(name = "id")
    private Users user;

    @OneToMany(mappedBy = "client")
    private Set<Order> orders;

}

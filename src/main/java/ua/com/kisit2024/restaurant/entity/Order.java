package ua.com.kisit2024.restaurant.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.mapping.Join;

import java.util.Date;
import java.util.List;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

@Entity
@Table(name = "_order")
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    private Long id;
    @Column(name = "date_created")
    private Date dataCreated;
    private boolean status;
    private String delivery;
    private String payment;

//    @ManyToOne
//    @JoinColumn(name = "client_id")
//    private Clients client;
//
//    @OneToMany(mappedBy = "order")
//    private List<Order> orderList;
//
//    @ManyToOne
//    @JoinColumn(name = "admin_id")
//    private Administrator admin;
//
//    @ManyToOne
//    @JoinColumn(name = "kitchen_id")
//    private Kitchen kitchen;


}

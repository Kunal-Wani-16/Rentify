package com.boardimak.main.services;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boardimak.main.model.Bookings;
import com.boardimak.main.model.User;
import com.boardimak.main.repository.BookingsCrudRepo;

import com.boardimak.main.repository.UsersRepository;



@Service
@Transactional
public class BookingsServices {
	@Autowired
	private UsersRepository usersRepo;

    private final BookingsCrudRepo repoBookings;

    public BookingsServices(BookingsCrudRepo repo) {
        super();
        this.repoBookings = repo;
    }
    
    public void saveCmsOther(Bookings book) {

        repoBookings.save(book);
    }

    public List<Bookings> findAllBookings() {
        List<Bookings> book = new ArrayList<Bookings>();
        for (Bookings other : repoBookings.findAll()) {
            book.add(other);
        }

        return book;
    }

    public void deleteBookigs(int id) {
        repoBookings.deleteById(id);
    }

    public void saveBookings(Bookings book) {
    	
    	User userDetails;
    	User userDetailForID;
    	userDetails=usersRepo.findAllById(Integer.valueOf(book.getOwnerID()));
    	
    	userDetailForID = usersRepo.findByEmail(book.getUser_email());
    	
    	System.out.println("book.getUser_email()*******"+book.getUser_email());
    	book.setUserID(userDetailForID.getId());
    	book.setOwner_name(userDetails.getFirstName());
        repoBookings.save(book);
    }

    public Bookings findOneBookings(int id) {

        return repoBookings.findAllById(id);
    }
}

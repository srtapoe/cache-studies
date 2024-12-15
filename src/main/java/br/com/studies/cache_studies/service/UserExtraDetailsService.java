package br.com.studies.cache_studies.service;

import br.com.studies.cache_studies.domain.UserExtraDetails;
import br.com.studies.cache_studies.entity.User;
import br.com.studies.cache_studies.repository.UserRepository;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

public class UserExtraDetailsService implements UserDetailsService {

    private final UserRepository userRepository;

    public UserExtraDetailsService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findByUsername(username)
                .orElseThrow(() -> new UsernameNotFoundException("Usuário não encontrado: " + username));
        return new UserExtraDetails(user.getName(), user.getUsername(), user.getPassword(), user.getRole());
    }
}

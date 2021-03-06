package by.nc.teamone.dba.dao;
import by.nc.teamone.entities.User;

public interface IUserDAO extends IBaseDAO<User, Long>{
    User getByLogin(String login);
}

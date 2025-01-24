package org.example.ecommerse2.Servelet;

import org.example.ecommerse2.Config.FactoryConfiguration;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Main {
    public static void main(String[] args) {
        Session session = FactoryConfiguration.getInstance().getSession();
        Transaction tx = session.beginTransaction();
        tx.commit();
        session.close();

    }

}

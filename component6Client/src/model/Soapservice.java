/**
 * Soapservice.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface Soapservice extends java.rmi.Remote {
    public model.Empolyee findByid(int id) throws java.rmi.RemoteException;
    public int updateEmp(model.Empolyee emp) throws java.rmi.RemoteException;
    public int insertEmp(model.Empolyee emp) throws java.rmi.RemoteException;
    public int removeEmployee(int id) throws java.rmi.RemoteException;
    public java.lang.Object[] findAllEmpolyee() throws java.rmi.RemoteException;
}

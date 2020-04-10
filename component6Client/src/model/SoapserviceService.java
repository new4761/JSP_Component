/**
 * SoapserviceService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public interface SoapserviceService extends javax.xml.rpc.Service {
    public java.lang.String getSoapserviceAddress();

    public model.Soapservice getSoapservice() throws javax.xml.rpc.ServiceException;

    public model.Soapservice getSoapservice(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}

package model;

public class SoapserviceProxy implements model.Soapservice {
  private String _endpoint = null;
  private model.Soapservice soapservice = null;
  
  public SoapserviceProxy() {
    _initSoapserviceProxy();
  }
  
  public SoapserviceProxy(String endpoint) {
    _endpoint = endpoint;
    _initSoapserviceProxy();
  }
  
  private void _initSoapserviceProxy() {
    try {
      soapservice = (new model.SoapserviceServiceLocator()).getSoapservice();
      if (soapservice != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)soapservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)soapservice)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (soapservice != null)
      ((javax.xml.rpc.Stub)soapservice)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public model.Soapservice getSoapservice() {
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice;
  }
  
  public model.Empolyee findByid(int id) throws java.rmi.RemoteException{
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice.findByid(id);
  }
  
  public int updateEmp(model.Empolyee emp) throws java.rmi.RemoteException{
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice.updateEmp(emp);
  }
  
  public int insertEmp(model.Empolyee emp) throws java.rmi.RemoteException{
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice.insertEmp(emp);
  }
  
  public int removeEmployee(int id) throws java.rmi.RemoteException{
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice.removeEmployee(id);
  }
  
  public java.lang.Object[] findAllEmpolyee() throws java.rmi.RemoteException{
    if (soapservice == null)
      _initSoapserviceProxy();
    return soapservice.findAllEmpolyee();
  }
  
  
}
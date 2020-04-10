/**
 * InsertEmp.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package model;

public class InsertEmp  implements java.io.Serializable {
    private model.Empolyee emp;

    public InsertEmp() {
    }

    public InsertEmp(
           model.Empolyee emp) {
           this.emp = emp;
    }


    /**
     * Gets the emp value for this InsertEmp.
     * 
     * @return emp
     */
    public model.Empolyee getEmp() {
        return emp;
    }


    /**
     * Sets the emp value for this InsertEmp.
     * 
     * @param emp
     */
    public void setEmp(model.Empolyee emp) {
        this.emp = emp;
    }

    private java.lang.Object __equalsCalc = null;
    public synchronized boolean equals(java.lang.Object obj) {
        if (!(obj instanceof InsertEmp)) return false;
        InsertEmp other = (InsertEmp) obj;
        if (obj == null) return false;
        if (this == obj) return true;
        if (__equalsCalc != null) {
            return (__equalsCalc == obj);
        }
        __equalsCalc = obj;
        boolean _equals;
        _equals = true && 
            ((this.emp==null && other.getEmp()==null) || 
             (this.emp!=null &&
              this.emp.equals(other.getEmp())));
        __equalsCalc = null;
        return _equals;
    }

    private boolean __hashCodeCalc = false;
    public synchronized int hashCode() {
        if (__hashCodeCalc) {
            return 0;
        }
        __hashCodeCalc = true;
        int _hashCode = 1;
        if (getEmp() != null) {
            _hashCode += getEmp().hashCode();
        }
        __hashCodeCalc = false;
        return _hashCode;
    }

    // Type metadata
    private static org.apache.axis.description.TypeDesc typeDesc =
        new org.apache.axis.description.TypeDesc(InsertEmp.class, true);

    static {
        typeDesc.setXmlType(new javax.xml.namespace.QName("http://model", ">insertEmp"));
        org.apache.axis.description.ElementDesc elemField = new org.apache.axis.description.ElementDesc();
        elemField.setFieldName("emp");
        elemField.setXmlName(new javax.xml.namespace.QName("http://model", "emp"));
        elemField.setXmlType(new javax.xml.namespace.QName("http://model", "Empolyee"));
        elemField.setNillable(false);
        typeDesc.addFieldDesc(elemField);
    }

    /**
     * Return type metadata object
     */
    public static org.apache.axis.description.TypeDesc getTypeDesc() {
        return typeDesc;
    }

    /**
     * Get Custom Serializer
     */
    public static org.apache.axis.encoding.Serializer getSerializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanSerializer(
            _javaType, _xmlType, typeDesc);
    }

    /**
     * Get Custom Deserializer
     */
    public static org.apache.axis.encoding.Deserializer getDeserializer(
           java.lang.String mechType, 
           java.lang.Class _javaType,  
           javax.xml.namespace.QName _xmlType) {
        return 
          new  org.apache.axis.encoding.ser.BeanDeserializer(
            _javaType, _xmlType, typeDesc);
    }

}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exemplar;

/**
 *
 * @author physicsstudent
 */
public class Exemplar {
    private Integer inv_num;
    private Integer price;
    private static int counter=0;
    public Exemplar (Integer inv_, Integer p_)
    {
        this.inv_num=inv_;
        this.price=p_;
        counter++;
    }
    public Integer getInv()
            {
                return this.inv_num;
            }
    public Integer getPrice()
    {
        return this.price;
    }
}

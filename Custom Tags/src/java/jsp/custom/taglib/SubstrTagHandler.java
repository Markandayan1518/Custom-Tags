/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jsp.custom.taglib;

import java.io.IOException;
import java.io.StringWriter;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;

/**
 *
 * @author mark-4304
 */
public class SubstrTagHandler extends SimpleTagSupport {

    private int start;
    private int end;

    public SubstrTagHandler() {
        this.start = 0;
        this.end = 0;
    }

    public int getStart() {
        return start;
    }

    public void setStart(int start) {
        this.start = start;
    }

    public int getEnd() {
        return end;
    }

    public void setEnd(int end) {
        this.end = end;
    }

    @Override
    public void doTag() throws JspException, IOException {
        //Get the writer object for output.
        JspWriter out = getJspContext().getOut();

        try {
            //Getting the Contain of the Body
            StringWriter stringWriter = new StringWriter();
            getJspBody().invoke(stringWriter);
            String str = stringWriter.toString();

            if (end == 0 || end > str.length()) {
                end = str.length();
            } else {
            }
            //Perform substr operation on string.
            System.out.println(str + ".substring(" + start + ", " + end + ")" + str.substring(start, end));
            out.println(str.substring(start, end));
        } catch (IOException e) {
            out.print(e.getMessage());
        }
    }
}

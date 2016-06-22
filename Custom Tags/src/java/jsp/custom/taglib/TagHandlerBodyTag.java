package jsp.custom.taglib;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import static javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_BUFFERED;
import javax.servlet.jsp.tagext.BodyTagSupport;
import static javax.servlet.jsp.tagext.Tag.EVAL_PAGE;

/**
 *
 * @author mark-4304
 */
public class TagHandlerBodyTag extends BodyTagSupport {

    protected BodyContent bodyContent;

    @Override
    public int doStartTag() {
        return EVAL_BODY_BUFFERED;
    }

    @Override
    public int doEndTag() {
        try {
            bodyContent = getBodyContent();
            String str = bodyContent.getString();
            JspWriter out = bodyContent.getEnclosingWriter();
            if (str != null) {
                out.println("<br>" + str.toLowerCase());
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return EVAL_PAGE;
    }
}

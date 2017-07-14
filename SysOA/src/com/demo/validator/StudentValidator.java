package com.demo.validator;

import com.jfinal.core.Controller;
import com.jfinal.validate.Validator;

public class StudentValidator extends Validator{
	//��У��ʧ��ʱ�Ż����
    @Override
    protected void handleError(Controller controller) {
        controller.keepPara("student.studentname");//���ύ��ֵ�ٴ���ҳ���Ա㱣��ԭ�������ֵ
        controller.render("/add.html");
    }

    @Override
    protected void validate(Controller controller) {
        //��֤����name��������Ϣkey,������Ϣvalue
        validateRequiredString("student.studentname", "studentnameMsg",
                "������ѧ������!");
    }
}

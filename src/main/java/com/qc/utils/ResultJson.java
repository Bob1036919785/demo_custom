package com.qc.utils;

import java.util.List;

/**
 * @Author:jiege
 * @Date: 2019/6/2 17:27
 */
public class ResultJson {
    private boolean successful;
    private String message;
    private List datas;

    public List getDatas() {
        return datas;
    }

    public void setDatas(List datas) {
        this.datas = datas;
    }

    public boolean isSuccessful() {
        return successful;
    }

    public void setSuccessful(boolean successful) {
        this.successful = successful;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}

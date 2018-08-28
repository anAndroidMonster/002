package com.android;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class CountListModel {
    private List<CountModel> countList = new ArrayList<>();

    public List<CountModel> getCountList() {
        return countList;
    }

    public void setCountList(List<CountModel> countList) {
        this.countList = countList;
    }

    public CountModel getTodayModel(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        String key = sdf.format(new Date());
        for(CountModel model: countList){
            if(model.getDate() != null && model.getDate().equals(key)){
                return model;
            }
        }
        CountModel newModel = new CountModel();
        newModel.setClick(0);
        newModel.setShow(0);
        newModel.setDate(key);
        countList.add(newModel);
        return newModel;
    }
}

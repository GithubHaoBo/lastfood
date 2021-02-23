package com.bean;

import java.util.HashMap;
import java.util.Map;

public class ShoppingCart {
    private Map<String, ShoppingCartItem> map = new HashMap<String, ShoppingCartItem>();

    public Map<String, ShoppingCartItem> getMap() {
        return map;
    }

    public void setMap(Map<String, ShoppingCartItem> map) {
        this.map = map;
    }

    // 添加菜品到购物车
    public void addMenusToCart(ShoppingCartItem item) { // 所传参数为要添加的菜品
        // 如果map里包含key值为item.getMenuname()的项
        if (map.containsKey(item.getMenuname())) {
            // 购物车里该菜单的总数=购物车里原有的菜单书+加到购物车里的菜单数
            int total = item.getSums() + map.get(item.getMenuname()).getSums();
            // 重新给item里的总数sums赋值
            item.setSums(total);
            // 将重新赋值的item项替换原来的项
            map.put(item.getMenuname(), item);
        } else {
            // 如果购物车里没有原菜品，则直接添加新菜品
            map.put(item.getMenuname(), item);
        }
    }

    // 从购物车删除一定数量的某个菜品
    public void delSomeMenusFromCart(ShoppingCartItem item) { // 所传参数为要删除的菜品
        // 如果map里包含key值为item.getMenuname()的项
        if (map.containsKey(item.getMenuname())) {
            // 如果购物车里的该菜品总数大于需要删除的菜品数
            if (map.get(item.getMenuname()).getSums() > item.getSums()) {
                // 购物车里该菜单的总数=购物车里原有的菜单书-所要删除的菜品数
                int total = map.get(item.getMenuname()).getSums() - item.getSums();
                // 重新给item里的总数sums赋值
                item.setSums(total);
                // 将重新赋值的item项替换原来的项
                map.put(item.getMenuname(), item);
            } else {
                // 如果购物车里的该菜品总数小于需要删除的菜品数，则全部删除
                map.put(item.getMenuname(), item);
            }
        }
    }

    //删除某一类菜品（取消某一行）
    public void delMenusFromCart(String menuname) {
        map.remove(menuname);
    }

    //全部删除所有菜品
    public void clearCart() {
        map.clear();
    }


}

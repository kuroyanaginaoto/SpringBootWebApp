package net.code;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AppController {

	@Autowired
	private TrSellItemsService sellItemsService;


	@Autowired
	HttpSession session;

	@RequestMapping("/items/{id}")
	public String showTopPage(@PathVariable int id, Model model) {

		TrSellItemsEntity sellItemsList = sellItemsService.getOne(id);
//		for (int i= 0 ; i<sellItemsList.size(); i++) {
//			System.out.println("収得したファイル");
//			System.out.println(sellItemsList.get(i).getSellItemsImageFileName1());
//		}

		model.addAttribute("sellItemsList",sellItemsList);

		return "/items";
	}


}

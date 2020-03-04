package net.code;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AppController {

	@Autowired
	private TrSellItemsService sellItemsService;


	@Autowired
	HttpSession session;

	@RequestMapping("/")
	public String showTopPage() {

		List<TrSellItemsEntity> sellItemsList = sellItemsService.findAll();
		for (int i= 0 ; i<sellItemsList.size(); i++) {
			System.out.println("収得したファイル");
			System.out.println(sellItemsList.get(i).getSellItemsImageFileName1());
		}

		session.setAttribute("sellItemsList",sellItemsList);

		return "index";
	}


}

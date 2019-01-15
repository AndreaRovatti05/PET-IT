package controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import business.AnimaleSegnalatoManager;
import modello.AnimaleSegnalato;

@Controller
public class ControlerSpAnimaleSegnalato {

	@RequestMapping(value ="", method=RequestMethod.GET)
	public @ResponseBody List<AnimaleSegnalato> elencoAnimaleSegnalato() {
		return AnimaleSegnalatoManager.elencoAnimaliSegnalati();
	}
}

package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/world")
public class WorldController {

	@GetMapping
	public String world() {
		return "Para essa semana, eu espero absorver os conteúdos ministrados no bootcamp,"
				+ "e ter bastante persistência para não desistir quando encontrar dificuldades.";
	}
}

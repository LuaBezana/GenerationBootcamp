package com.helloworld.hello.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/hello")
public class HelloController {

	@GetMapping
	public String hello() {
		return "As habilidades utilizadas para a realização desse exercício foram:"
				+ "\n- Orientação ao detalhe\n- Comunicação\n\nAs mentalidades utilizadas "
				+ "para a realização desse exercício foram: \n- Persistência"
				+ "\n- Mentalidade de Crescimento";
	}
}
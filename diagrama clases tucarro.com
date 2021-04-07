{
	"_type": "Project",
	"_id": "AAAAAAFF+h6SjaM2Hec=",
	"name": "Untitled",
	"ownedElements": [
		{
			"_type": "UMLModel",
			"_id": "AAAAAAFF+qBWK6M3Z8Y=",
			"_parent": {
				"$ref": "AAAAAAFF+h6SjaM2Hec="
			},
			"name": "Model",
			"ownedElements": [
				{
					"_type": "UMLClassDiagram",
					"_id": "AAAAAAFF+qBtyKM79qY=",
					"_parent": {
						"$ref": "AAAAAAFF+qBWK6M3Z8Y="
					},
					"name": "Main",
					"defaultDiagram": true
				}
			]
		},
		{
			"_type": "UMLModel",
			"_id": "AAAAAAF4lNLQoPjVI00=",
			"_parent": {
				"$ref": "AAAAAAFF+h6SjaM2Hec="
			},
			"name": "Model1",
			"ownedElements": [
				{
					"_type": "UMLClassDiagram",
					"_id": "AAAAAAF4lNLQoPjW528=",
					"_parent": {
						"$ref": "AAAAAAF4lNLQoPjVI00="
					},
					"name": "ClassDiagram1",
					"ownedViews": [
						{
							"_type": "UMLClassView",
							"_id": "AAAAAAF4lNLtlfjcT20=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"subViews": [
								{
									"_type": "UMLNameCompartmentView",
									"_id": "AAAAAAF4lNLtlfjdPxM=",
									"_parent": {
										"$ref": "AAAAAAF4lNLtlfjcT20="
									},
									"model": {
										"$ref": "AAAAAAF4lNLtlPjadz8="
									},
									"subViews": [
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNLtlfjenkk=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlfjdPxM="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 448,
											"top": 64,
											"height": 13
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNLtlvjfYgQ=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlfjdPxM="
											},
											"font": "Arial;13;1",
											"left": 229,
											"top": 39,
											"width": 127,
											"height": 13,
											"text": "Datospersonales"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNLtlvjglWA=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlfjdPxM="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 448,
											"top": 64,
											"width": 80.9072265625,
											"height": 13,
											"text": "(from Model1)"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNLtlvjhWoc=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlfjdPxM="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 448,
											"top": 64,
											"height": 13,
											"horizontalAlignment": 1
										}
									],
									"font": "Arial;13;0",
									"left": 224,
									"top": 32,
									"width": 137,
									"height": 25,
									"stereotypeLabel": {
										"$ref": "AAAAAAF4lNLtlfjenkk="
									},
									"nameLabel": {
										"$ref": "AAAAAAF4lNLtlvjfYgQ="
									},
									"namespaceLabel": {
										"$ref": "AAAAAAF4lNLtlvjglWA="
									},
									"propertyLabel": {
										"$ref": "AAAAAAF4lNLtlvjhWoc="
									}
								},
								{
									"_type": "UMLAttributeCompartmentView",
									"_id": "AAAAAAF4lNLtlvjiotw=",
									"_parent": {
										"$ref": "AAAAAAF4lNLtlfjcT20="
									},
									"model": {
										"$ref": "AAAAAAF4lNLtlPjadz8="
									},
									"subViews": [
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNuyu/nm+mU=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lNuyq/nj+CU="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 62,
											"width": 127,
											"height": 13,
											"text": "+nombres",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNvxFPntQfg=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lNvxC/nqQh4="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 77,
											"width": 127,
											"height": 13,
											"text": "+apellidos",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN0Ar/oIYqY=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lN0ApvoFU0c="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 92,
											"width": 127,
											"height": 13,
											"text": "+tipoDocumento",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNwwGPn0RXo=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lNwwD/nxoT4="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 107,
											"width": 127,
											"height": 13,
											"text": "+direccion",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNyAHvn7C6M=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lNyAFvn4aKc="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 122,
											"width": 127,
											"height": 13,
											"text": "+telefono",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN1yefoRCNw=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjiotw="
											},
											"model": {
												"$ref": "AAAAAAF4lN1ybvoOtIY="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 137,
											"width": 127,
											"height": 13,
											"text": "+numeroDocumento",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 224,
									"top": 57,
									"width": 137,
									"height": 98
								},
								{
									"_type": "UMLOperationCompartmentView",
									"_id": "AAAAAAF4lNLtlvjj0WQ=",
									"_parent": {
										"$ref": "AAAAAAF4lNLtlfjcT20="
									},
									"model": {
										"$ref": "AAAAAAF4lNLtlPjadz8="
									},
									"subViews": [
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lNzAu/oCiCU=",
											"_parent": {
												"$ref": "AAAAAAF4lNLtlvjj0WQ="
											},
											"model": {
												"$ref": "AAAAAAF4lNzAsvn/zfo="
											},
											"font": "Arial;13;0",
											"left": 229,
											"top": 160,
											"width": 127,
											"height": 13,
											"text": "#registrar(): void",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 224,
									"top": 155,
									"width": 137,
									"height": 23
								},
								{
									"_type": "UMLReceptionCompartmentView",
									"_id": "AAAAAAF4lNLtlvjk2FA=",
									"_parent": {
										"$ref": "AAAAAAF4lNLtlfjcT20="
									},
									"model": {
										"$ref": "AAAAAAF4lNLtlPjadz8="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 224,
									"top": 32,
									"width": 10,
									"height": 10
								},
								{
									"_type": "UMLTemplateParameterCompartmentView",
									"_id": "AAAAAAF4lNLtl/jlwlM=",
									"_parent": {
										"$ref": "AAAAAAF4lNLtlfjcT20="
									},
									"model": {
										"$ref": "AAAAAAF4lNLtlPjadz8="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 224,
									"top": 32,
									"width": 10,
									"height": 10
								}
							],
							"font": "Arial;13;0",
							"containerChangeable": true,
							"left": 224,
							"top": 32,
							"width": 137,
							"height": 146,
							"nameCompartment": {
								"$ref": "AAAAAAF4lNLtlfjdPxM="
							},
							"attributeCompartment": {
								"$ref": "AAAAAAF4lNLtlvjiotw="
							},
							"operationCompartment": {
								"$ref": "AAAAAAF4lNLtlvjj0WQ="
							},
							"receptionCompartment": {
								"$ref": "AAAAAAF4lNLtlvjk2FA="
							},
							"templateParameterCompartment": {
								"$ref": "AAAAAAF4lNLtl/jlwlM="
							}
						},
						{
							"_type": "UMLClassView",
							"_id": "AAAAAAF4lNOKMvkI+uA=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"subViews": [
								{
									"_type": "UMLNameCompartmentView",
									"_id": "AAAAAAF4lNOKM/kJK+Y=",
									"_parent": {
										"$ref": "AAAAAAF4lNOKMvkI+uA="
									},
									"model": {
										"$ref": "AAAAAAF4lNOKMvkGoOs="
									},
									"subViews": [
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNOKM/kK9K8=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kJK+Y="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 896,
											"top": 64,
											"height": 13
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNOKM/kL3NQ=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kJK+Y="
											},
											"font": "Arial;13;1",
											"left": 453,
											"top": 39,
											"width": 119,
											"height": 13,
											"text": "Vehiculo"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNOKM/kMTUg=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kJK+Y="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 896,
											"top": 64,
											"width": 80.9072265625,
											"height": 13,
											"text": "(from Model1)"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNOKM/kNLwY=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kJK+Y="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 896,
											"top": 64,
											"height": 13,
											"horizontalAlignment": 1
										}
									],
									"font": "Arial;13;0",
									"left": 448,
									"top": 32,
									"width": 129,
									"height": 25,
									"stereotypeLabel": {
										"$ref": "AAAAAAF4lNOKM/kK9K8="
									},
									"nameLabel": {
										"$ref": "AAAAAAF4lNOKM/kL3NQ="
									},
									"namespaceLabel": {
										"$ref": "AAAAAAF4lNOKM/kMTUg="
									},
									"propertyLabel": {
										"$ref": "AAAAAAF4lNOKM/kNLwY="
									}
								},
								{
									"_type": "UMLAttributeCompartmentView",
									"_id": "AAAAAAF4lNOKM/kOlEM=",
									"_parent": {
										"$ref": "AAAAAAF4lNOKMvkI+uA="
									},
									"model": {
										"$ref": "AAAAAAF4lNOKMvkGoOs="
									},
									"subViews": [
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN4Ravoaa64=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kOlEM="
											},
											"model": {
												"$ref": "AAAAAAF4lN4RYfoXJeg="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 62,
											"width": 119,
											"height": 13,
											"text": "+placa",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN6DV/oi9wc=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kOlEM="
											},
											"model": {
												"$ref": "AAAAAAF4lN6DTfof1IM="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 77,
											"width": 119,
											"height": 13,
											"text": "+marca",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN7+uPopTu0=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kOlEM="
											},
											"model": {
												"$ref": "AAAAAAF4lN7+qvomipc="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 92,
											"width": 119,
											"height": 13,
											"text": "+modelo",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN80a/owD04=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kOlEM="
											},
											"model": {
												"$ref": "AAAAAAF4lN80X/otqw8="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 107,
											"width": 119,
											"height": 13,
											"text": "+estado",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lN+HJfo33/k=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kOlEM="
											},
											"model": {
												"$ref": "AAAAAAF4lN+HHPo0c4w="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 122,
											"width": 119,
											"height": 13,
											"text": "+color",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 448,
									"top": 57,
									"width": 129,
									"height": 83
								},
								{
									"_type": "UMLOperationCompartmentView",
									"_id": "AAAAAAF4lNOKM/kPcj8=",
									"_parent": {
										"$ref": "AAAAAAF4lNOKMvkI+uA="
									},
									"model": {
										"$ref": "AAAAAAF4lNOKMvkGoOs="
									},
									"subViews": [
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lOFbLPpPZYU=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kPcj8="
											},
											"model": {
												"$ref": "AAAAAAF4lOFbG/pM68c="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 145,
											"width": 119,
											"height": 13,
											"text": "+registrar(): void",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lO6/2fqWl9U=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kPcj8="
											},
											"model": {
												"$ref": "AAAAAAF4lO6/z/qTIwM="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 160,
											"width": 119,
											"height": 13,
											"text": "+modificar(): void",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lO8a2PqfVr4=",
											"_parent": {
												"$ref": "AAAAAAF4lNOKM/kPcj8="
											},
											"model": {
												"$ref": "AAAAAAF4lO8azvqcLtw="
											},
											"font": "Arial;13;0",
											"left": 453,
											"top": 175,
											"width": 119,
											"height": 13,
											"text": "+eliminar(): void",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 448,
									"top": 140,
									"width": 129,
									"height": 53
								},
								{
									"_type": "UMLReceptionCompartmentView",
									"_id": "AAAAAAF4lNOKM/kQ7Nc=",
									"_parent": {
										"$ref": "AAAAAAF4lNOKMvkI+uA="
									},
									"model": {
										"$ref": "AAAAAAF4lNOKMvkGoOs="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 448,
									"top": 32,
									"width": 10,
									"height": 10
								},
								{
									"_type": "UMLTemplateParameterCompartmentView",
									"_id": "AAAAAAF4lNOKM/kRhg0=",
									"_parent": {
										"$ref": "AAAAAAF4lNOKMvkI+uA="
									},
									"model": {
										"$ref": "AAAAAAF4lNOKMvkGoOs="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 448,
									"top": 32,
									"width": 10,
									"height": 10
								}
							],
							"font": "Arial;13;0",
							"containerChangeable": true,
							"left": 448,
							"top": 32,
							"width": 129,
							"height": 161,
							"nameCompartment": {
								"$ref": "AAAAAAF4lNOKM/kJK+Y="
							},
							"attributeCompartment": {
								"$ref": "AAAAAAF4lNOKM/kOlEM="
							},
							"operationCompartment": {
								"$ref": "AAAAAAF4lNOKM/kPcj8="
							},
							"receptionCompartment": {
								"$ref": "AAAAAAF4lNOKM/kQ7Nc="
							},
							"templateParameterCompartment": {
								"$ref": "AAAAAAF4lNOKM/kRhg0="
							}
						},
						{
							"_type": "UMLClassView",
							"_id": "AAAAAAF4lNQb9fkzBOk=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"subViews": [
								{
									"_type": "UMLNameCompartmentView",
									"_id": "AAAAAAF4lNQb9fk0m0g=",
									"_parent": {
										"$ref": "AAAAAAF4lNQb9fkzBOk="
									},
									"model": {
										"$ref": "AAAAAAF4lNQb9fkx8Iw="
									},
									"subViews": [
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNQb9fk1JnU=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk0m0g="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 32,
											"top": 48,
											"height": 13
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNQb9fk2IWY=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk0m0g="
											},
											"font": "Arial;13;1",
											"left": 21,
											"top": 31,
											"width": 162.576171875,
											"height": 13,
											"text": "Usuario"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNQb9fk307U=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk0m0g="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 32,
											"top": 48,
											"width": 80.9072265625,
											"height": 13,
											"text": "(from Model1)"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNQb9fk4kf4=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk0m0g="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 32,
											"top": 48,
											"height": 13,
											"horizontalAlignment": 1
										}
									],
									"font": "Arial;13;0",
									"left": 16,
									"top": 24,
									"width": 172.576171875,
									"height": 25,
									"stereotypeLabel": {
										"$ref": "AAAAAAF4lNQb9fk1JnU="
									},
									"nameLabel": {
										"$ref": "AAAAAAF4lNQb9fk2IWY="
									},
									"namespaceLabel": {
										"$ref": "AAAAAAF4lNQb9fk307U="
									},
									"propertyLabel": {
										"$ref": "AAAAAAF4lNQb9fk4kf4="
									}
								},
								{
									"_type": "UMLAttributeCompartmentView",
									"_id": "AAAAAAF4lNQb9fk5uEc=",
									"_parent": {
										"$ref": "AAAAAAF4lNQb9fkzBOk="
									},
									"model": {
										"$ref": "AAAAAAF4lNQb9fkx8Iw="
									},
									"subViews": [
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNpENfnLb9c=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk5uEc="
											},
											"model": {
												"$ref": "AAAAAAF4lNpEJfnIQcM="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 54,
											"width": 162.576171875,
											"height": 13,
											"text": "+correo: string",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNqZWvnSUYc=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk5uEc="
											},
											"model": {
												"$ref": "AAAAAAF4lNqZQfnP5eg="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 69,
											"width": 162.576171875,
											"height": 13,
											"text": "-contraseña: passwork",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lNrtTvnZg7c=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9fk5uEc="
											},
											"model": {
												"$ref": "AAAAAAF4lNrtPfnWBws="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 84,
											"width": 162.576171875,
											"height": 13,
											"text": "+tipoCuenta: string",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 16,
									"top": 49,
									"width": 172.576171875,
									"height": 53
								},
								{
									"_type": "UMLOperationCompartmentView",
									"_id": "AAAAAAF4lNQb9vk6beo=",
									"_parent": {
										"$ref": "AAAAAAF4lNQb9fkzBOk="
									},
									"model": {
										"$ref": "AAAAAAF4lNQb9fkx8Iw="
									},
									"subViews": [
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lNs+s/ngPgQ=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9vk6beo="
											},
											"model": {
												"$ref": "AAAAAAF4lNs+qPndeeA="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 107,
											"width": 162.576171875,
											"height": 13,
											"text": "#iniciarSesion(): void",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lOmowPpkEZ0=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9vk6beo="
											},
											"model": {
												"$ref": "AAAAAAF4lOmotfphOYY="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 122,
											"width": 162.576171875,
											"height": 13,
											"text": "#recuperarContrseña(): void",
											"horizontalAlignment": 0
										},
										{
											"_type": "UMLOperationView",
											"_id": "AAAAAAF4lOsw/Pp3Nvk=",
											"_parent": {
												"$ref": "AAAAAAF4lNQb9vk6beo="
											},
											"model": {
												"$ref": "AAAAAAF4lOsw8vp0zW4="
											},
											"font": "Arial;13;0",
											"left": 21,
											"top": 137,
											"width": 162.576171875,
											"height": 13,
											"text": "+cerrarSesion(): void",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 16,
									"top": 102,
									"width": 172.576171875,
									"height": 53
								},
								{
									"_type": "UMLReceptionCompartmentView",
									"_id": "AAAAAAF4lNQb9vk7bTU=",
									"_parent": {
										"$ref": "AAAAAAF4lNQb9fkzBOk="
									},
									"model": {
										"$ref": "AAAAAAF4lNQb9fkx8Iw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 16,
									"top": 24,
									"width": 10,
									"height": 10
								},
								{
									"_type": "UMLTemplateParameterCompartmentView",
									"_id": "AAAAAAF4lNQb9vk8vDM=",
									"_parent": {
										"$ref": "AAAAAAF4lNQb9fkzBOk="
									},
									"model": {
										"$ref": "AAAAAAF4lNQb9fkx8Iw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 16,
									"top": 24,
									"width": 10,
									"height": 10
								}
							],
							"font": "Arial;13;0",
							"containerChangeable": true,
							"left": 16,
							"top": 24,
							"width": 172.576171875,
							"height": 146,
							"nameCompartment": {
								"$ref": "AAAAAAF4lNQb9fk0m0g="
							},
							"attributeCompartment": {
								"$ref": "AAAAAAF4lNQb9fk5uEc="
							},
							"operationCompartment": {
								"$ref": "AAAAAAF4lNQb9vk6beo="
							},
							"receptionCompartment": {
								"$ref": "AAAAAAF4lNQb9vk7bTU="
							},
							"templateParameterCompartment": {
								"$ref": "AAAAAAF4lNQb9vk8vDM="
							}
						},
						{
							"_type": "UMLDependencyView",
							"_id": "AAAAAAF4lNc88PlkFlU=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNc87vli+OQ="
							},
							"subViews": [
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNc88PllWcc=",
									"_parent": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"model": {
										"$ref": "AAAAAAF4lNc87vli+OQ="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 206,
									"top": 79,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNc88PlmFlo=",
									"_parent": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"model": {
										"$ref": "AAAAAAF4lNc87vli+OQ="
									},
									"visible": null,
									"font": "Arial;13;0",
									"left": 207,
									"top": 64,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 30,
									"hostEdge": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNc88Pln6Ao=",
									"_parent": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"model": {
										"$ref": "AAAAAAF4lNc87vli+OQ="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 205,
									"top": 108,
									"height": 13,
									"alpha": -1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNc88PlkFlU="
									},
									"edgePosition": 1
								}
							],
							"font": "Arial;13;0",
							"head": {
								"$ref": "AAAAAAF4lNLtlfjcT20="
							},
							"tail": {
								"$ref": "AAAAAAF4lNQb9fkzBOk="
							},
							"lineStyle": 1,
							"points": "189:100;223:101",
							"showVisibility": true,
							"nameLabel": {
								"$ref": "AAAAAAF4lNc88PllWcc="
							},
							"stereotypeLabel": {
								"$ref": "AAAAAAF4lNc88PlmFlo="
							},
							"propertyLabel": {
								"$ref": "AAAAAAF4lNc88Pln6Ao="
							}
						},
						{
							"_type": "UMLDependencyView",
							"_id": "AAAAAAF4lNisGPl5lKo=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNisGPl3aEw="
							},
							"subViews": [
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNisGPl6/qA=",
									"_parent": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"model": {
										"$ref": "AAAAAAF4lNisGPl3aEw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 403,
									"top": 116,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNisGPl7Lns=",
									"_parent": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"model": {
										"$ref": "AAAAAAF4lNisGPl3aEw="
									},
									"visible": null,
									"font": "Arial;13;0",
									"left": 403,
									"top": 131,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 30,
									"hostEdge": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNisGPl8hZg=",
									"_parent": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"model": {
										"$ref": "AAAAAAF4lNisGPl3aEw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 404,
									"top": 87,
									"height": 13,
									"alpha": -1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNisGPl5lKo="
									},
									"edgePosition": 1
								}
							],
							"font": "Arial;13;0",
							"head": {
								"$ref": "AAAAAAF4lNLtlfjcT20="
							},
							"tail": {
								"$ref": "AAAAAAF4lNOKMvkI+uA="
							},
							"lineStyle": 1,
							"points": "447:110;361:107",
							"showVisibility": true,
							"nameLabel": {
								"$ref": "AAAAAAF4lNisGPl6/qA="
							},
							"stereotypeLabel": {
								"$ref": "AAAAAAF4lNisGPl7Lns="
							},
							"propertyLabel": {
								"$ref": "AAAAAAF4lNisGPl8hZg="
							}
						},
						{
							"_type": "UMLClassView",
							"_id": "AAAAAAF4lNkD/PmKqy4=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNkD/PmIgOw="
							},
							"subViews": [
								{
									"_type": "UMLNameCompartmentView",
									"_id": "AAAAAAF4lNkD/fmLNSI=",
									"_parent": {
										"$ref": "AAAAAAF4lNkD/PmKqy4="
									},
									"model": {
										"$ref": "AAAAAAF4lNkD/PmIgOw="
									},
									"subViews": [
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNkD/fmMEUU=",
											"_parent": {
												"$ref": "AAAAAAF4lNkD/fmLNSI="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 976,
											"top": 528,
											"height": 13
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNkD/fmNI4o=",
											"_parent": {
												"$ref": "AAAAAAF4lNkD/fmLNSI="
											},
											"font": "Arial;13;1",
											"left": 493,
											"top": 271,
											"width": 80.57080078125,
											"height": 13,
											"text": "Categorias"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNkD/fmOG1U=",
											"_parent": {
												"$ref": "AAAAAAF4lNkD/fmLNSI="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 976,
											"top": 528,
											"width": 80.9072265625,
											"height": 13,
											"text": "(from Model1)"
										},
										{
											"_type": "LabelView",
											"_id": "AAAAAAF4lNkD/fmPDRQ=",
											"_parent": {
												"$ref": "AAAAAAF4lNkD/fmLNSI="
											},
											"visible": false,
											"font": "Arial;13;0",
											"left": 976,
											"top": 528,
											"height": 13,
											"horizontalAlignment": 1
										}
									],
									"font": "Arial;13;0",
									"left": 488,
									"top": 264,
									"width": 90.57080078125,
									"height": 25,
									"stereotypeLabel": {
										"$ref": "AAAAAAF4lNkD/fmMEUU="
									},
									"nameLabel": {
										"$ref": "AAAAAAF4lNkD/fmNI4o="
									},
									"namespaceLabel": {
										"$ref": "AAAAAAF4lNkD/fmOG1U="
									},
									"propertyLabel": {
										"$ref": "AAAAAAF4lNkD/fmPDRQ="
									}
								},
								{
									"_type": "UMLAttributeCompartmentView",
									"_id": "AAAAAAF4lNkD/fmQSoI=",
									"_parent": {
										"$ref": "AAAAAAF4lNkD/PmKqy4="
									},
									"model": {
										"$ref": "AAAAAAF4lNkD/PmIgOw="
									},
									"subViews": [
										{
											"_type": "UMLAttributeView",
											"_id": "AAAAAAF4lODttvpHP6w=",
											"_parent": {
												"$ref": "AAAAAAF4lNkD/fmQSoI="
											},
											"model": {
												"$ref": "AAAAAAF4lODto/pEoq4="
											},
											"font": "Arial;13;0",
											"left": 493,
											"top": 294,
											"width": 80.57080078125,
											"height": 13,
											"text": "+categoria",
											"horizontalAlignment": 0
										}
									],
									"font": "Arial;13;0",
									"left": 488,
									"top": 289,
									"width": 90.57080078125,
									"height": 23
								},
								{
									"_type": "UMLOperationCompartmentView",
									"_id": "AAAAAAF4lNkD/fmRhtk=",
									"_parent": {
										"$ref": "AAAAAAF4lNkD/PmKqy4="
									},
									"model": {
										"$ref": "AAAAAAF4lNkD/PmIgOw="
									},
									"font": "Arial;13;0",
									"left": 488,
									"top": 312,
									"width": 90.57080078125,
									"height": 10
								},
								{
									"_type": "UMLReceptionCompartmentView",
									"_id": "AAAAAAF4lNkD/fmS24A=",
									"_parent": {
										"$ref": "AAAAAAF4lNkD/PmKqy4="
									},
									"model": {
										"$ref": "AAAAAAF4lNkD/PmIgOw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 488,
									"top": 264,
									"width": 10,
									"height": 10
								},
								{
									"_type": "UMLTemplateParameterCompartmentView",
									"_id": "AAAAAAF4lNkD/vmTr4E=",
									"_parent": {
										"$ref": "AAAAAAF4lNkD/PmKqy4="
									},
									"model": {
										"$ref": "AAAAAAF4lNkD/PmIgOw="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 488,
									"top": 264,
									"width": 10,
									"height": 10
								}
							],
							"font": "Arial;13;0",
							"containerChangeable": true,
							"left": 488,
							"top": 264,
							"width": 90.57080078125,
							"height": 71,
							"nameCompartment": {
								"$ref": "AAAAAAF4lNkD/fmLNSI="
							},
							"attributeCompartment": {
								"$ref": "AAAAAAF4lNkD/fmQSoI="
							},
							"operationCompartment": {
								"$ref": "AAAAAAF4lNkD/fmRhtk="
							},
							"receptionCompartment": {
								"$ref": "AAAAAAF4lNkD/fmS24A="
							},
							"templateParameterCompartment": {
								"$ref": "AAAAAAF4lNkD/vmTr4E="
							}
						},
						{
							"_type": "UMLDependencyView",
							"_id": "AAAAAAF4lNmRXfm1gXg=",
							"_parent": {
								"$ref": "AAAAAAF4lNLQoPjW528="
							},
							"model": {
								"$ref": "AAAAAAF4lNmRXPmzuTE="
							},
							"subViews": [
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNmRXfm2/CU=",
									"_parent": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"model": {
										"$ref": "AAAAAAF4lNmRXPmzuTE="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 538,
									"top": 220,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNmRXfm3TiY=",
									"_parent": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"model": {
										"$ref": "AAAAAAF4lNmRXPmzuTE="
									},
									"visible": null,
									"font": "Arial;13;0",
									"left": 553,
									"top": 218,
									"height": 13,
									"alpha": 1.5707963267948966,
									"distance": 30,
									"hostEdge": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"edgePosition": 1
								},
								{
									"_type": "EdgeLabelView",
									"_id": "AAAAAAF4lNmRXfm4iJU=",
									"_parent": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"model": {
										"$ref": "AAAAAAF4lNmRXPmzuTE="
									},
									"visible": false,
									"font": "Arial;13;0",
									"left": 509,
									"top": 223,
									"height": 13,
									"alpha": -1.5707963267948966,
									"distance": 15,
									"hostEdge": {
										"$ref": "AAAAAAF4lNmRXfm1gXg="
									},
									"edgePosition": 1
								}
							],
							"font": "Arial;13;0",
							"head": {
								"$ref": "AAAAAAF4lNkD/PmKqy4="
							},
							"tail": {
								"$ref": "AAAAAAF4lNOKMvkI+uA="
							},
							"lineStyle": 1,
							"points": "521:193;528:263",
							"showVisibility": true,
							"nameLabel": {
								"$ref": "AAAAAAF4lNmRXfm2/CU="
							},
							"stereotypeLabel": {
								"$ref": "AAAAAAF4lNmRXfm3TiY="
							},
							"propertyLabel": {
								"$ref": "AAAAAAF4lNmRXfm4iJU="
							}
						}
					]
				},
				{
					"_type": "UMLClass",
					"_id": "AAAAAAF4lNLtlPjadz8=",
					"_parent": {
						"$ref": "AAAAAAF4lNLQoPjVI00="
					},
					"name": "Datospersonales",
					"attributes": [
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNuyq/nj+CU=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "nombres"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNvxC/nqQh4=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "apellidos"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN0ApvoFU0c=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "tipoDocumento"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNwwD/nxoT4=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "direccion"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNyAFvn4aKc=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "telefono"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN1ybvoOtIY=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "numeroDocumento"
						}
					],
					"operations": [
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lNzAsvn/zfo=",
							"_parent": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							},
							"name": "registrar",
							"visibility": "protected",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPLi7/q5+eI=",
									"_parent": {
										"$ref": "AAAAAAF4lNzAsvn/zfo="
									},
									"type": "void",
									"direction": "return"
								}
							]
						}
					]
				},
				{
					"_type": "UMLClass",
					"_id": "AAAAAAF4lNOKMvkGoOs=",
					"_parent": {
						"$ref": "AAAAAAF4lNLQoPjVI00="
					},
					"name": "Vehiculo",
					"ownedElements": [
						{
							"_type": "UMLDependency",
							"_id": "AAAAAAF4lNisGPl3aEw=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"source": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"target": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							}
						},
						{
							"_type": "UMLDependency",
							"_id": "AAAAAAF4lNmRXPmzuTE=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"source": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"target": {
								"$ref": "AAAAAAF4lNkD/PmIgOw="
							}
						}
					],
					"attributes": [
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN4RYfoXJeg=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "placa"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN6DTfof1IM=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "marca"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN7+qvomipc=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "modelo"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN80X/otqw8=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "estado"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lN+HHPo0c4w=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "color"
						}
					],
					"operations": [
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lOFbG/pM68c=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "registrar",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPMcrvq9gdQ=",
									"_parent": {
										"$ref": "AAAAAAF4lOFbG/pM68c="
									},
									"type": "void",
									"direction": "return"
								}
							]
						},
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lO6/z/qTIwM=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "modificar",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPNje/rB17s=",
									"_parent": {
										"$ref": "AAAAAAF4lO6/z/qTIwM="
									},
									"type": "void",
									"direction": "return"
								}
							]
						},
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lO8azvqcLtw=",
							"_parent": {
								"$ref": "AAAAAAF4lNOKMvkGoOs="
							},
							"name": "eliminar",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPOb+vrFvnM=",
									"_parent": {
										"$ref": "AAAAAAF4lO8azvqcLtw="
									},
									"type": "void",
									"direction": "return"
								}
							]
						}
					]
				},
				{
					"_type": "UMLClass",
					"_id": "AAAAAAF4lNQb9fkx8Iw=",
					"_parent": {
						"$ref": "AAAAAAF4lNLQoPjVI00="
					},
					"name": "Usuario",
					"ownedElements": [
						{
							"_type": "UMLDependency",
							"_id": "AAAAAAF4lNc87vli+OQ=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"source": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"target": {
								"$ref": "AAAAAAF4lNLtlPjadz8="
							}
						}
					],
					"attributes": [
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNpEJfnIQcM=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "correo",
							"type": "string"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNqZQfnP5eg=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "contraseña",
							"visibility": "private",
							"type": "passwork"
						},
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lNrtPfnWBws=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "tipoCuenta",
							"type": "string"
						}
					],
					"operations": [
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lNs+qPndeeA=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "iniciarSesion",
							"visibility": "protected",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPHlwPqswkE=",
									"_parent": {
										"$ref": "AAAAAAF4lNs+qPndeeA="
									},
									"type": "void",
									"direction": "return"
								}
							]
						},
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lOmotfphOYY=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "recuperarContrseña",
							"visibility": "protected",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPIuSvqwOWU=",
									"_parent": {
										"$ref": "AAAAAAF4lOmotfphOYY="
									},
									"type": "void",
									"direction": "return"
								}
							]
						},
						{
							"_type": "UMLOperation",
							"_id": "AAAAAAF4lOsw8vp0zW4=",
							"_parent": {
								"$ref": "AAAAAAF4lNQb9fkx8Iw="
							},
							"name": "cerrarSesion",
							"parameters": [
								{
									"_type": "UMLParameter",
									"_id": "AAAAAAF4lPJyAvq0NDo=",
									"_parent": {
										"$ref": "AAAAAAF4lOsw8vp0zW4="
									},
									"type": "void",
									"direction": "return"
								}
							]
						}
					]
				},
				{
					"_type": "UMLClass",
					"_id": "AAAAAAF4lNkD/PmIgOw=",
					"_parent": {
						"$ref": "AAAAAAF4lNLQoPjVI00="
					},
					"name": "Categorias",
					"attributes": [
						{
							"_type": "UMLAttribute",
							"_id": "AAAAAAF4lODto/pEoq4=",
							"_parent": {
								"$ref": "AAAAAAF4lNkD/PmIgOw="
							},
							"name": "categoria"
						}
					]
				}
			]
		}
	]
}
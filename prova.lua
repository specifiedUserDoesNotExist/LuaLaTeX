-------------------------------------------------------------------------------------
-- VARIAVEIS USADAS NO TEXTO
local var = {}

local function varDef(name, value)
    if value == "CN" then
        var[name] = "CIÊNCIAS DA NATUREZA"
    elseif value == "LC" then
        var[name] = "LINGUAGENS E CÓDIGO"
    elseif value == "CH" then
        var[name] = "CIÊNCIAS HUMANAS"
    elseif value == "MT" then
        var[name] = "MATEMÁTICA"
    else
        var[name] = value
    end
end

local function varPrint(name)
    tex.print(var[name])
end

-------------------------------------------------------------------------------------

local function frasePrintOLD()
    local number = var["frase"]
    tex.print([[\begin{center}]])
    tex.print([[\begin{minipage}{.9\linewidth}]])
    tex.print([[\begin{tcolorbox}[colback=gray!5!white,colframe=gray!75!black] ]])
    tex.print([[\centering]])
    tex.print([[\scriptsize]])
    if number == "1" then
        tex.print([[``Todo grande progresso da ciência resultou de uma nova audácia da imaginação''. (John Dewey)]])
    elseif number == "2" then
        tex.print([[``Toda a nossa ciência, comparada com a realidade, é primitiva e infantil – e, no entanto, é a coisa mais preciosa que temos''. (Albert Einstein)]])
    elseif number == "3" then
        tex.print([[``Há verdadeiramente duas coisas diferentes: saber e crer que se sabe. A ciência consiste em saber; em crer que se sabe reside a ignorância''. (Hipócrates)]])
    else
        tex.print([[``Aprendi que o caminho para o progresso não é rápido e nem fácil.'' (Marie Curie)]])
    end
    tex.print([[\end{tcolorbox}]])
    tex.print([[\end{minipage}]])
    tex.print([[\end{center}]])
end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local function frasePrint()
    local number = var["FRASE"]
    local area = var["AREA"]
    tex.print([[\begin{center}]])
    tex.print([[\begin{minipage}{.9\linewidth}]])
    tex.print([[\begin{tcolorbox}[colback=gray!5!white,colframe=gray!75!black] ]])
    tex.print([[\centering]])
    tex.print([[\scriptsize]])
    if area == "CIÊNCIAS DA NATUREZA" then
        if number == "1" then
            tex.print([[``O homem não é nada além daquilo que a educação faz dele.'' Immanuel Kant]])
        elseif number == "2" then
            tex.print([[``O homem não é nada além daquilo que a educação faz dele.'' Immanuel Kant]])
        elseif number == "3" then
            tex.print([[``O homem não é nada além daquilo que a educação faz dele.'' Immanuel Kant]])
        elseif number == "4" then
            tex.print([[``O homem não é nada além daquilo que a educação faz dele.'' Immanuel Kant]])
        else
            tex.print([[``O homem não é nada além daquilo que a educação faz dele.'' Immanuel Kant]])
        end
    elseif area == "CIÊNCIAS HUMANAS"  then
        if number == "1" then
            tex.print([[``A força da alienação vem dessa fragilidade dos indivíduos, quando apenas conseguem identificar o que os separa e não o que os une''. Milton Santos]])
        elseif number == "2" then
            tex.print([["O ignorante afirma, o sábio duvida, o sensato reflete". Aristóteles]])
        elseif number == "3" then
            tex.print([[“Penso, logo existo” René Descarte]])
        elseif number == "4" then
            tex.print([[“Só sei que nada sei” Sócrates]])
        else
            tex.print([[“Uma das penalidades por se recusar a participar da política é que você acaba sendo governado por pessoas inferiores”. Platão]])
        end
    elseif area == "LINGUAGENS E CÓDIGO" then
        if number == "1" then
            tex.print([[``O afeto é a minha forma de ver o mundo.'' Ryane Leão]])
        elseif number == "2" then
            tex.print([[``Ninguém doma um coração de poeta.'' Augusto dos Anjos]])
        elseif number == "3" then
            tex.print([[``Gosto de manusear um livro. O livro é a melhor invenção humana.'' Carolina Maria de Jesus]])
        elseif number == "4" then
            tex.print([[``Para dizer certas coisas são precisas palavras que amanhecem.'' Marina Colasanti]])
        else
            tex.print([[````Para dizer certas coisas são precisas palavras que amanhecem.'' Marina Colasanti]])
        end
    else
        if number == "1" then
            tex.print([[``Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão.'' (Mahatma Gandhi)]])
        elseif number == "2" then
            tex.print([[``Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão.'' (Mahatma Gandhi)]])
        elseif number == "3" then
            tex.print([[``Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão.'' (Mahatma Gandhi)]])
        elseif number == "4" then
            tex.print([[``Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão.'' (Mahatma Gandhi)]])
        else
            tex.print([[``Você nunca sabe que resultados virão da sua ação. Mas se você não fizer nada, não existirão.'' (Mahatma Gandhi)]])
        end
    end
    tex.print([[\end{tcolorbox}]])
    tex.print([[\end{minipage}]])
    tex.print([[\end{center}]])
end

-------------------------------------------------------------------------------------

local lista = {}
local seeds = {}
local gabSeed = {1,4,2,5,5,2,3,3,4,3,1,4,3,4,3,5,5,3,4,1,5,3,2,4,4,3,5,5,3,1,2,1,2,5,4,1,4,5,2,4,2,2,2,3,5,1,4,4,3,4,5,4,1,2,1,5,3,4,2,4,5,2,5,2,1,3,5,5,1,4,1,2,5,5,4,2,1,1,5,4,2,2,4,5,1,5,2,4,2,4,4,1,2,2,4,4,3,1,2,4}
local countSeed = 0

local gabList = {}

-------------------------------------------------------------------------------------

local function srandom()
    for i=#lista, 2, -1 do
        local j = math.random(i)
        lista[i], lista[j] = lista[j], lista[i]
    end
end

local function itemPrint(opt)
    countSeed = countSeed + 1
    
   --lista[2]=nil
   lista[3]=nil
   lista[4]=nil
   lista[5]=nil
    
    math.randomseed(seeds[countSeed])
    srandom()

	if #lista>5 then
    	tex.print([[\textcolor{red}{\Huge{Mais de 5 opções.}}]])
    	--tex.print([[]])
    	return
    end
    
    local hash = {}
    for _,v in ipairs(lista) do
    	if hash[v] then
    		tex.print([[\textcolor{red}{\Huge{Questão com opções repetida.}}]])
    	end
    	hash[v] = true
  	end

    if opt ~= 1 then
        --tex.print("\\begin{multicols}{" .. opt .. "}")
        tex.print("\\begin{multicols}{" .. 2 .. "}")
    end
    
    tex.print([[\begin{enumerate}[label={\bfseries\alph*)}, itemsep=1pt, parsep=1pt] ]])

    tex.print([[\item ]] .. lista[1])
    tex.print([[\item ]] .. lista[2])
    --tex.print([[\item ]] .. lista[3])
    --tex.print([[\item ]] .. lista[4])
    --tex.print([[\item ]] .. lista[5])
    tex.print("\\end{enumerate}")
    
    if opt ~= 1 then
       tex.print("\\end{multicols}")
    end
    --tex.print("\\endgroup")
    tex.print("\\par")
    --tex.print(t)
     if var["NOME"] == "FORMS-" then
    	--tex.print([[\newpage]])
    	tex.print([[\newpage]])
    end
end


local function createLista(elem, opt)
    if opt == 0 then
        lista = {}
    end
    lista[#lista+1] = tostring(elem)
    --table.insert(lista, #lista+1, elem)
end

-------------------------------------------------------------------------------------
--[[
local provas = {
    CN = {
        BIO = {{},{},{}
        },
        FIS = {{},{},{}
        },
        QUI = {{},{},{}
        },
        MAT = {{},{},{}
        }
    },
    CH = {
        FIL = {{},{},{}
        },
        GEO = {{},{},{}
        },
        HIS = {{},{},{}
        },
        SOC = {{},{},{}
        }
    },
    LC = {
        ART = {{},{},{}
        },
        EFI = {{},{},{}
        },
        ESP = {{},{},{}
        },
        ING = {{},{},{}
        },
        POR = {{},{},{}
        }
    }
}
--]]
local provas = {
	CN = {{},{},{}},
	CH = {{},{},{}},
	LC = {{},{},{}},
	MT = {{},{},{}}
}

local function provasLista(periodo)
    
    for areas in pairs(provas) do
        --for disciplinas in pairs(provas[areas]) do
            --for _, serie in ipairs(provas[areas][disciplinas]) do
            for _, serie in ipairs(provas[areas]) do
                local p = io.popen("find ./PERIODO0" .. periodo .. " -iname " .. ' "*.tex"')
                for i in p:lines() do
                	--tex.print(i)
                    --local x = string.match(i, areas .. "/" .. disciplinas .. "[A-Z]+/0" .. _   .. "/.+tex")
                    local x = string.match(i, areas .. "/0" .. _   .. "/.+tex")
                    --tex.print(x)
                    --tex.print("Passou aqui11111")
                    if x ~= nill then
                        --table.insert(provas[areas][disciplinas][_], x)
                        table.insert(provas[areas][_], x)
                    end
                end
                --table.sort(provas[areas][disciplinas][_])
                table.sort(provas[areas][_])
            end
        --end
    end
end

--local function printProvas(disciplina, sequencia)
--local function printProvas(nProva, nSerie, disciplina, sequencia)
local function printProvas(nProva, nSerie, sequencia)
    --[[
    disciplina: BIO, FIS, QUI, MAT
                FIL, GEO, HIS, SOX
                ART, EFI, ESP, ING, POR
    sequencia:  {01, 02, 03, 04}
    --]]
    
    local imprimeNumero = ""
    
    local numeroProva = var["FRASE"]
    
    local periodo = var["PERIODO"]
    local serie = tonumber(var["SERIE"])
    local area = aux[var["AREA"]]
    
    local caminho = "\\input{PERIODO0" .. periodo .. "/"
    
    --if not next(provas[area][disciplina][serie]) then
    if not next(provas[area][serie]) then
        provasLista(periodo)
    end
    
    local numSeq = 0
    for seq in string.gmatch(sequencia, "{?%d?%d?}?%d+[qn]?") do
        numSeq = numSeq + 1
    end
    
    if numeroProva == nProva and serie == tonumber(nSerie) then

        --local totalQuestao = #provas[area][disciplina][serie]
        local totalQuestao = #provas[area][serie]
        if numSeq ~= totalQuestao then
            tex.print([[\noindent \textcolor{red}{\Huge{Erro quantidade de questões}}\\]])
            --tex.print(\\Coloque " .. totalQuestao .. " questao em " .. disciplina .. "\\\\")
            tex.print([[\textcolor{red}{\Huge{Coloque ]] .. totalQuestao .. [[ questao em }}]] .. "\\\\")
            return
        end
        
		local htab = {}
		for seq in string.gmatch(sequencia, "{?%d?%d?}?%d+[qn]?") do
			if htab[seq] then 
				tex.print([[\noindent \textcolor{red}{\Huge{Duplicate value: }}]] .. seq .. [[\\]])
				tex.print([[\textcolor{red}{\Huge{Corrija as questões repetidas.}}\\]])
				return
			else
				htab[seq] = true
			end
		end
		
		--[[
        for seq in string.gmatch(sequencia, "%d%d[qn]?") do
            --tex.print(seq)
            --tex.print(area, disciplina, serie .. "\\newline")
            if string.find(seq, "q") then
                seq = string.sub(seq, 1, 2)
                --tex.print(caminho ..  provas[area][disciplina][serie][tonumber(seq)] .. "} ")
                tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
                tex.print("\\columnbreak")
            elseif string.find(seq, "n") then
                seq = string.sub(seq, 1, 2)
                --tex.print(caminho ..  provas[area][disciplina][serie][tonumber(seq)] .. "} ")
                tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
                tex.print("\\vfill\\null\\columnbreak")
                --tex.print("\\columnbreak")
            else
                --tex.print(caminho ..  provas[area][disciplina][serie][tonumber(seq)] .. "} ")
                tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
                --tex.print(imprimeNumero)
            end
        end
        --]]
		for seq in string.gmatch(sequencia, "{?%d?%d?}?%d+[qn]?") do
			local i, j= string.find(seq, "{%d%d?}")
			if i then
				local vsp = string.sub(seq, i+1, j-1)
				seq = string.sub(seq, j+1,j+3)
				tex.print([[\vspace{-]] .. vsp .. [[pt}]])
				if string.find(seq, "q") then
					seq = string.sub(seq, 1, 2)
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
					tex.print("\\columnbreak")
				elseif string.find(seq, "n") then
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
					tex.print("\\vfill\\null\\columnbreak")
				else
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
				end
			else
				 if string.find(seq, "q") then
					seq = string.sub(seq, 1, 2)
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
					tex.print("\\columnbreak")
				elseif string.find(seq, "n") then
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
					tex.print("\\vfill\\null\\columnbreak")
				else
					--tex.print([[\begin{samepage}]])
					--tex.print([[\begin{minipage}{.94\columnwidth}]])
					--tex.print([[\phantom{}]])
					tex.print(caminho ..  provas[area][serie][tonumber(seq)] .. "} ")
					--tex.print([[\end{minipage}]])
					--tex.print([[\vspace{20pt}]])
					--tex.print([[\end{samepage}]])
				end
			end
		end
    end
    --tex.print("\\input{PERIODO03/" .. provas[area][disciplina][serie][10] .. "} ")
end

-------------------------------------------------------------------------------------

--local function getNumberQuestion(disciplina)
local function getNumberQuestion()
    
    --local total = 0
    
    aux = {}
    aux["CIÊNCIAS DA NATUREZA"] = "CN"
    aux["LINGUAGENS E CÓDIGO"] = "LC"
    aux["CIÊNCIAS HUMANAS"] = "CH"
    aux["MATEMÁTICA"] = "MT"
    
    local periodo = var["PERIODO"]
    local serie = tonumber(var["SERIE"])
    local area = aux[var["AREA"]]
    
    --if not next(provas[area][disciplina][serie]) then
    if not next(provas[area][serie]) then
        provasLista(periodo)
    end
    
    --total = #provas[area][disciplina][serie]
    --total = #provas[area][serie]
    --tex.print(#provas[area][serie])
    return #provas[area][serie] --total
end

-------------------------------------------------------------------------------------

function numTotalQuestao()

    --tQuestion = 0
    tQuestion = math.floor(getNumberQuestion())
   
   --[[
    if var["AREA"] == "CIÊNCIAS DA NATUREZA" then
        local FIS = getNumberQuestion('FIS')
        local QUI = getNumberQuestion('QUI')
        local BIO = getNumberQuestion('BIO')
        tQuestion = math.floor(FIS + QUI + BIO)
        tQuestion = math.floor(getNumTotalQuestion())
    
    elseif var['AREA'] == "LINGUAGENS E CÓDIGO" then
        local ING = getNumberQuestion('ING')
        local ESP = getNumberQuestion('ESP')
        local POR = getNumberQuestion('POR')
        local EFI = getNumberQuestion('EFI')
        local ART = getNumberQuestion('ART')
        tQuestion = math.floor(ING + ESP + POR + EFI + ART)
    
    elseif var['AREA'] == "CIÊNCIAS HUMANAS" then
        local HIS = getNumberQuestion('HIS')
        local GEO = getNumberQuestion('GEO')
        local SOC = getNumberQuestion('SOC')
        local FIL = getNumberQuestion('FIL')
        tQuestion = math.floor(HIS + GEO + SOC + FIL)
   
    else
        tQuestion = math.floor(getNumberQuestion("MAT"))
    end
    --]]
end

function getNumTotalQuestion()
    tex.print(tQuestion)
end
-----------------------------------------------------------------

--local tQuestion = 48

local function gabarito()
    
    --tQuestion = 15
    
    local prova = {0,0,0,0,0}
    prova[tonumber(var["FRASE"])] = 1
    
    local pos1Y = 13
    local pos2Y = 1.3
    --local pos3Y = -3.5g
    
    local pos1X = 7.25
    local pos2X = -2.5
    
    tex.print("\\begin{tikzpicture}[line width=1pt]")
    tex.print("\\draw [line width=0.5cm] (" .. pos2X .."," .. pos2Y .. ") -- (" .. pos2X+.5 .."," .. pos2Y .. ");")
    tex.print("\\draw [line width=0.5cm] (" .. pos1X .."," .. pos2Y .. ") -- (" .. pos1X+.5 .. "," .. pos2Y .. ");")
    tex.print("\\draw [line width=0.5cm] (" .. pos2X .."," .. pos1Y .. ") -- (" .. pos2X+.5 .."," .. pos1Y .. ");")
    tex.print("\\draw [line width=0.5cm] (" .. pos1X .."," .. pos1Y .. ") -- (" .. pos1X+.5 .. "," .. pos1Y .. ");")
    
    --tex.print("\\draw [line width=0.5cm] (8.75," .. pos3Y .. ") -- (9.25," .. pos3Y .. ");")
    --tex.print("\\draw [line width=0.5cm] (-2.25," .. pos3Y .. ") -- (-1.75," .. pos3Y .. ");")
    
    --[[ MATRICULA
    --tex.print("\\node at (12," .. 5 .. ") {\\bf{MATRÍCULA}};")
    for i=1,7 do
       for j=1,10 do
            tex.print("\\draw (" .. i*.6+8.3 .. "," .. 13.5-j*.5 .. ") node{".. j-1 .. "};")
            tex.print("\\draw [fill=black, fill opacity=0] (" .. i*.6+8.3 .. "," .. 13.5-j*.5 .. ") circle (0.2);")
        end
    end
    --]]
    
    
    --tex.print("\\draw [line width=1pt] (-2,0) -- (-2,7);")
    --tex.print("\\draw [line width=1pt] (-2,0) -- (9.,0);")
    --tex.print("\\draw [line width=1pt] (9,7) -- (9.,0);")
    --tex.print("\\draw [line width=1pt] (-2,7) -- (9.,7);")
    
    tex.print("\\draw [fill=black, fill opacity=" .. prova[1] .. "] (" .. (pos1X+pos2X)/2 .."," .. pos1Y .. ") circle (0.25);")
    tex.print("\\draw [fill=black, fill opacity=" .. prova[4] .. "] (" .. (pos1X+pos2X)/2 .."," .. pos2Y .. ") circle (0.25);")
    tex.print("\\draw [fill=black, fill opacity=" .. prova[5] .. "] (" .. .25+pos2X .. "," .. (pos1Y+pos2Y)/2 .. ") circle (0.25);")    
    tex.print("\\draw [fill=black, fill opacity=" .. prova[2] .. "] (" .. .25+pos1X .. "," .. 2*(pos1Y+pos2Y)/3 .. ") circle (0.25);")
    tex.print("\\draw [fill=black, fill opacity=" .. prova[3] .. "] (" .. .25+pos1X .. "," .. (pos1Y+pos2Y)/3 .. ") circle (0.25);")

    local py = 12.2

    tex.print("\\draw (-1.6+0*.45," .. py .. ") node{};")
    tex.print("\\draw (-1.6+1*.45," .. py .. ") node{A};")
    tex.print("\\draw (-1.6+2*.45," .. py .. ") node{B};")
    tex.print("\\draw (-1.6+3*.45," .. py .. ") node{C};")
    tex.print("\\draw (-1.6+4*.45," .. py .. ") node{D};")
    tex.print("\\draw (-1.6+5*.45," .. py .. ") node{E};")
    tex.print("\\draw (-1.6+7*.45," .. py .. ") node{};")
    tex.print("\\draw (-1.6+8*.45," .. py .. ") node{A};")
    tex.print("\\draw (-1.6+9*.45," .. py .. ") node{B};")
    tex.print("\\draw (-1.6+10*.45," .. py .. ") node{C};")
    tex.print("\\draw (-1.6+11*.45," .. py .. ") node{D};")
    tex.print("\\draw (-1.6+12*.45," .. py .. ") node{E};")
    tex.print("\\draw (-1.6+14*.45," .. py .. ") node{};")
    tex.print("\\draw (-1.8+15*.45," .. py .. ") node{A};")
    tex.print("\\draw (-1.8+16*.45," .. py .. ") node{B};")
    tex.print("\\draw (-1.8+17*.45," .. py .. ") node{C};")
    tex.print("\\draw (-1.8+18*.45," .. py .. ") node{D};")
    tex.print("\\draw (-1.8+19*.45," .. py .. ") node{E};")
    
    local cols = {math.floor(tQuestion/3), math.floor(tQuestion/3), math.floor(tQuestion/3)}
    
    local dif = math.abs(tQuestion - cols[1] - cols[2] - cols[3])
    
    if dif == 1 then
        cols[1] = cols[1] + 1
    elseif dif == 2 then
        cols[1] = cols[1] + 1
        cols[2] = cols[2] + 1
    end
    
    for j=1,cols[1] do
        tex.print("\\draw [color=black] (" .. -1.6 .. "," .. py+.1-j*.65 .. ") node{" .. j .. "};")
        
        if j <= cols[2] then 
            tex.print("\\draw [color=black] (" .. 1.5 .. "," .. py+.1-j*.65 .. ") node{" .. cols[1] + j .. "};")
        end
        
        if j <= cols[3] then
            tex.print("\\draw [color=black] (" .. 4.5 .. "," .. py+.1-j*.65 .. ") node{" .. cols[1] + cols[2] + j .. "};")
        end
        
        for i=1,5 do
            local cor = "black"
            
            local opacity = grade or gabList[j][i]
            tex.print("\\draw [fill=" .. cor .. ", fill opacity=" .. opacity  .. "] (" .. -1.6+i*.45 .. "," .. py+.1-j*.65 .. " ) circle (0.16);")
            
            if j <= cols[2] then
                local opacity = grade or gabList[cols[1]+j][i]
                tex.print("\\draw [fill=" .. cor .. ", fill opacity=" .. opacity .. "] (" .. 1.5+i*.45 .. "," .. py+.1-j*.65 .. " ) circle (0.16);")
            end
            
            if j <= cols[3] then
                local opacity = grade or gabList[cols[1]+cols[2]+j][i]
                tex.print("\\draw [fill=" .. cor .. ", fill opacity=" .. opacity .. "] (" .. 4.5+i*.45 .. "," .. py+.1-j*.65 .. " ) circle (0.16);")
            end
        end
    end
    
    tex.print("\\end{tikzpicture}")

end

-------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------

local function getCapa(opt)
    
    if opt == 0 then grade = nil else grade = 0 end
    
    if not next(seeds) then
        for i=1, tQuestion do
            table.insert(seeds, math.random(100)) 
        end 
    end
    
    local ordemDisc = ""
    if var["AREA"] == "CIÊNCIAS DA NATUREZA" then
        ordemDisc = "BIO,FIS,QUI"
    elseif var["AREA"] == "CIÊNCIAS HUMANAS" then
        ordemDisc = "SOC,FIL,HIS,GEO"
    elseif var["AREA"] == "LINGUAGENS E CÓDIGO" then
        ordemDisc = "POR,ING,ESP,EFI,ART"
    else
        ordemDisc = "MAT"
    end
    
    local letras = {"A","B","C","D","E"}
    local nome = "gab." .. aux[var["AREA"]] .. "." .. var["SERIE"] .. "." .. var["FRASE"] .. ".dat"
    local info = aux[var["AREA"]] .. "," .. var["SERIE"] .. "," .. var["FRASE"]
    
    if opt == 0 then
        file = io.open("gabaritoCorrecao/" .. nome, "w")
        --file = io.open(nome, "w")
        file:write("ÁREA,SÉRIE,PROVA\n")
        file:write(info,"\n")
        file:write(ordemDisc,"\n")
        for i,j in ipairs(seeds) do
            file:write(i, ",",letras[gabSeed[j]],"\n")
        end
        file:close()
    end
    
    for i=1,tQuestion do
        gabList[i] = {0,0,0,0,0}
        gabList[i][gabSeed[seeds[i]]] = 1
    end
    
    tex.print("\\input{lib/capa}")
end

local function printIf(txt1, txt2, txt3)
	if var["SERIE"] == "1" then
		tex.print(12, txt1)
	elseif var["SERIE"] == "2" then
		tex.print(12, txt2)
	else
		tex.print(12, txt3)
	end
end

local function provaForms(opt)
	if opt == 1 then
		if var["NOME"] ~= "FORMS-" then
			tex.print("\\begin{multicols}{2}")
		end
	end
	
	if opt == 2 then
		if var["NOME"] ~= "FORMS-" then
			tex.print("\\end{multicols}")
		end
	end
end

local function final()
	local nome = "__" .. var["SERIE"] .. "ANO-" .. aux[var["AREA"]] .. "0" .. var["FRASE"] .. "-P" .. var["PERIODO"] .. ".pdf"
	os.execute("echo " .. nome)
	os.execute("mv main.pdf " .. nome)
	os.execute([[echo "passou aqui"]])
end
-------------------------------------------------------------------------------------


return {
    varDef = varDef,
    varPrint = varPrint,
    frasePrint = frasePrint,
    itemPrint = itemPrint,
    numTotalQuestao = numTotalQuestao,
    printProvas = printProvas,
    getNumberQuestion = getNumberQuestion,
    gabarito = gabarito,
    getNumTotalQuestion = getNumTotalQuestion,
    getCapa = getCapa,
    printIf = printIf,
    final = final,
    provaForms = provaForms,
    createLista = createLista
}
-------------------------------------------------------------------------------------

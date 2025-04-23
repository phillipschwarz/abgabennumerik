using DataFrames

#####################
# Aufgabe 3

# Funktion zur Berechnung der Eins-Norm
function norm_1(A::Matrix)
	return maximum([sum(abs.(A[:, j])) for j in 1:size(A, 2)])
end

# Funktion zur Berechnung der induzierten Unendlichkeitsnorm
function norm_inf(A::Matrix)
	return maximum([sum(abs.(A[i, :])) for i in 1:size(A, 1)])
end

# Funktion zur Berechnung der Frobenius-Norm
function norm_F(A::Matrix)
	return sqrt(sum(abs2.(A)))
end

# Funktion zur Erstellung der Matrix H
function create_H(n::Int)
	H = zeros(n, n)
	for i in 1:n
		for j in 1:n
			H[i, j] = 1 / (i + j - 1)
		end
	end
	return H
end

# Funktion zur Ausgabe der Normen der Matrix H für verschieden Dimensionen n
function tabelle_norm()
	# Werte für N
	N_values = [2, 3, 5, 8, 10, 15]
	results = []

	# Arbeit
	for N in N_values
		H = create_H(N)

		# Berechnung der Normen
		n1 = norm_1(H)
		n_inf = norm_inf(H)
		nF = norm_F(H)

		# In results speichern
		push!(results, (N, n1, n_inf, nF))
	end

	# Ausgabe der Ergebnisse als Tabelle
	d = DataFrame(results, [:N, :norm_1, :norm_inf, :norm_F])

	d
	
end

#####################
# Aufgabe 4

# Funktion für Nachahmung des Heron-Verfahrens
function konv(x0, S, n)
    x = zeros(n+1)
    x[1] = x0

    for i in 1:n
        x[i+1] = 0.5 * (x[i] + S/x[i])
    end

    return x
end

# Funktion zum Testen der Konvergenzvorgänge für verschiedene Werte von x_0 und n
function test()
	xw = [0.0, 0.1, 0.5, 1.0, 5.0]

	nw = [0, 3, 5, 10]

	
	for a in 1:3
		n = nw[a+1]
		
		for i in 1:4
			println(konv(xw[i+1], 0.5, n))
		end
		
	end
	
end

# Tabelle für n = 10 und S = 0.5 für x_0 werden die Werte 0.1, 0.5, 1.0, 5.0 gewählt
function tabelle1()
    n = 10
    S = 0.5

	arr1 = konv(0.1, S, n)
	arr2 = konv(0.5, S, n)
	arr3 = konv(1.0, S, n)
	arr4 = konv(5.0, S, n)
	df = DataFrame(Iteration = 0:10,
				   Wert1 = arr1,
				   Wert2 = arr2,
				   Wert3 = arr3,
				   Wert4 = arr4
				  )

	df
end

# Tabelle für n = 5 und S = 0.5 für x_0 werden die Werte 0.1, 0.5, 1.0, 5.0 gewählt
function tabelle2()
	S = 0.5
	n = 5

	arr1 = konv(0.1, S, n)
	arr2 = konv(0.5, S, n)
	arr3 = konv(1.0, S, n)
	arr4 = konv(5.0, S, n)
	df = DataFrame(Iteration = 0:5,
				   Wert1 = arr1,
				   Wert2 = arr2,
				   Wert3 = arr3,
				   Wert4 = arr4
				  )

	df
end

# Tabelle für n = 3 und S = 0.5 für x_0 werden die Werte 0.1, 0.5, 1.0, 5.0 gewählt
function tabelle3()
    S = 0.5
	n = 3
	arr1 = konv(0.1, S, n)
	arr2 = konv(0.5, S, n)
	arr3 = konv(1.0, S, n)
	arr4 = konv(5.0, S, n)
	df = DataFrame(Iteration = 0:3,
				   Wert1 = arr1,
				   Wert2 = arr2,
				   Wert3 = arr3,
				   Wert4 = arr4
				  )

	df
end


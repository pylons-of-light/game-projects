if g_gold <= 300
    g_gold = 0
else if g_gold <= 1000
    g_gold = floor(g_gold * 0.5)
else if g_gold <= 3000
    g_gold = floor(g_gold * 0.6)
else if g_gold <= 5000
    g_gold = floor(g_gold * 0.75)
else
    g_gold = floor(g_gold * 0.85)

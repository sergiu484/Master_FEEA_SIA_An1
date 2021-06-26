' 12.1 simple prediction (time series) and app.test (msg.box)'
' DMX prediction query in VB(TS-AvgSales) '
Public Class Form1
	Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBese.Load
		Dim conn As AdomdConnection
		conn = New AdomdConnection("Provider=SQLNCLI11.1;Data Source=MV-W81-32BITS;" & _
									"Integrated Security=SSPI;Initial Catalog=DMAddinsDB")
		conn.Open()
		Dim cmd As AdomdCommand
		cmd = New AdomdCommand("SELECT FLATTENED PredictTimeSeries([forecast_model_correct_TS].[AvgSales],1,1) AS PredAvgSales " & _
		"FROM [forecast_model_correct_TS]")
		cmd.Connection =conn
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim mart(8, 1)
		Dim i
		i = 0
		While (adr.Read)
			matr(i, 0) = Convert.ToDateTime(adr.GetValue(0)).ToShortDateString
			'matr(i, 1) = (Math.Celing(adr.GetValue(1) * 1000) / 100D).ToString'
			matr(i, 1) = Math.Round(adr.GetValue(1), 2, MidpointRounding.AwayFromZero).ToString
			MessageBox.Show(matr(i, 0) & ": " & matr(i, 1))
			i = i + 1
		End While
		conn.Close()
	End Sub
End Class

' 12.2 simple prediction (time series) and app.input control for No.Periods Forward '
' pred_app-code2(form_load) '

Imports Microsoft.AnalysisServices.AdomdClient
Public Class Form1
	Dim conn As AdomdConnection
	Dim connstr As String = "Provider=SQLNCLI11.1;Data Source=MV-W81-32BITS;Integrated Security=SSPI;Initial Catalog=DMAddinsDB"
	Dim q_part1 As String = "SELECT FLATTENED PredictTimeSeries([forecast_model_correct_TS].[AvgSales],"
	Dim q_part2 As String = ") AS PredAvgSales FROM [forecast_model_correct_TS]"
	
	Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		Dim k As Integer
		For k = 1 To 30
			ComboBox1.Items.Add(k.ToString)
		Next
		ComboBox1.SelectedIndex = 0
		conn = New AdomdConnection(connstr)
		conn.Open()
		Dim cmd As AdomdCommand
		cmd = New AdomdCommand(q_part1 & ComboBox1.SelectedItem.ToString & q_part2)
		cmd.Connection = conn
		Dim matr(get_adr_no_of_lines(cmd) - 1, 1)
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim i As Integer = 0
		While (adr.Read)
			matr(i, 0) = Convert.ToDateTime(adr.GetValue(0)).ToShortDateString
			matr(i, 1) = Math.Round(adr.GetValue(1), 2, MidpointRounding.AwayFromZero).ToString
			i = i + 1
		End While
		DataGridView1.DataSource = CreateDataView(matr)
		adr.Close()
		cmd.Dispose()
		conn.Close()
	End Sub

' pred_app-code3(combo_change) '	

	Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged
		conn = New AdomdConnection(connstr)
		conn.Open()
		Dim cmd As AdomdCommand(q_part1 & ComboBox1.SelectedItem.ToString & q_part2)
		cmd.Connection = conn
		Dim matr(get_adr_no_of_lines(cmd) - 1, 1)
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim i As Integer = 0
		While (adr.Read)
			matr(i, 0) = adr.GetValue(0)
			matr(i, 1) = Math.Round(adr.GetValue(1), 2, MidpointRounding.AwayFromZero).ToString
			i = i + 1
		End While
		adr.Close()
		cmd.Dispose()
		DataGridView1.DataSource = Nothing
		DataGridView1.DataSource = CreateDataView(matr)
		conn.Close()
	End Sub
End Class

' pred_app-code4(2additional_functions) '

Function CreateDataView(matrix As Array) As ICollection
	Dim noLines As Integer
	Dim noCols As Integer
	noCols = matrix.GetLength(1) - 1
	noLines = matrix.GetLength(0) - 1
	Dim dt As New DataTable()
	Dim Dr As DataRow
	If matrix.Length > 1 Then
		dt.Columns.Add(New DataColumn("TimeStamp", GetType(String)))
		dt.Columns.Add(New DataColumn("Predicted AvgSales", GetType(String)))
		Dim k, l As Integer
		For l = 0 To noLines
			dr = dt.NewRow()
			For k = 0 To noCols
				dr(k) = matrix(l, k)
			Next
			dt.Rows.Add(dr)
		Next
	End If
	Dim dv As New DataView(dt)
	Return dv
End Function

Function get_adr_no_lines(cmd As AdomdCommand) As Integer
	Dim adr As AdomdDataReader
	adr = cmd.ExecuteReader()
	Dim i As Integer = 0 
	While (adr.Read)
		i = i + 1
	End While
	adr.Close()
	Return i
End Function



' 12.3 simple app ex.to query sys.catalog, DM models, techniques(services) and more '

' app-code2 (form_load)'
Imports Microsoft.AnalysisServices.AdomdClient
Public Class Form1
	Dim conn As AdomdConnection
	Dim fixstr As String = "Provider=SQLNCLI11.1;Data Source=MV-W81-32BITS;Integrated Security=SSPI;Initial Catalog="
	Private Sub Form1_Load(sender As Object, e As EventArgs) Handles MyBase.Load
		Dim initcat As String
		initcat = "DMAddinsDB"
		conn = New AdomdConnection(fixstr & initcat)
		conn.Open()
		Dim cmd As AdomdCommand
		cmd = New AdomdCommand("SELECT * FROM $SYSTEM.DBSCHEMA_Catalogs")
		cmd.Connection = conn
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim m
		Dim i
		i = 0
		While (adr.Read)
			m = adr.GetValue(0)
			ComboBox1.Items.Add(m)
			i = i + 1
		End While
		ComboBox1.SelectedIndex = 0
		conn.Close()
		cmd.Dispose()
	End Sub
	
	
	' app-code3(combo1_change) '
	Private Sub ComboBox1_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox1.SelectedIndexChanged
		conn = New AdomdConnection(fixstr & ComboBox1.SelectedItem.ToString)
		conn.Open()
		Dim cmd As AdomdCommand
		cmd = New AdomdCommand("SELECT DISTINCT SERVICE_NAME FROM $SYSTEM.DMSCHEMA_MINING_MODELS")
		cmd.Connection = conn
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim i As Integer = 0
		ComboBox2.Items.Clear()
		While (adr.Read)
			ComboBox2.Items.Add(adr.GetValue(0))
			i = i + 1
		End While
		If (i = 0) Then
			MessageBox.Show("No models")
			ComboBox2.SelectedIndex = -1
			ComboBox2.Text = ""
			ComboBox3.SelectedIndex = -1
			ComboBox3.Text = ""
			ComboBox3.Items.Clear()
		Else
			ComboBox2.SelectedIndex = 0
		End If
		conn.Close()
		cmd.Dispose()
	End Sub
	
	' app-code4(combo2_change) '
	Private Sub ComboBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox2.SelectedIndexChanged
		If (ComboBox2.SelectedIndex >= 0) Then
			conn = New AdomdConnection(fixstr & ComboBox1.SelectedItem.ToString)
			conn.Open()
			Dim cmd As AdomdCommand
			cmd = New AdomdCommand("SELECT MODEL_NAME FROM $SYSTEM.DMSCHEMA_MINING_MODELS WHERE SERVICE_NAME = '" & ComboBox2.SelectedItem.ToString & "'")
			cmd.Connection = conn
			Dim adr As AdomdDataReader
			adr = cmd.ExecuteReader()
			Dim i As Integer = 0
			ComboBox3.Item.Clear()
			While (adr.Read)
				ComboBox3.Items.Add(adr.GetValue(0))
			End While
			If (i = 0) Then
				ComboBox3.SelectedIndex = -1
				ComboBox3.Text = ""
			Else
				ComboBox3.SelectedIndex = 0
			End If
			conn.Close()
			cmd.Dispose()
		End If
	End Sub
	
	' app-code5(button_click) '
	Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
		If (ComboBox3.SelectedIndex >= 0) Then
			conn = New AdomdConnection(fixstr & ComboBox1.SelectedItem.ToString)
			conn.Open()
			Dim cmd As AdomdCommand
			cmd = New AdomdCommand("SELECT NODE_DESCRIPTION, NONE_PROBABILITY FROM [" & ComboBox3.SelectedItem.ToString & "].CONTENT ORDER BY NODE_PROBABILITY DESC")
			cmd.Connection = conn
			Dim matr(ger_adr_no_of_lines(cmd) - 1, 1)
			Dim adr As AdomdDataReader
			adr = cmd.ExecuteReader()
			Dim i As Integer = 0
			While (adr.Read)
				matr(i, 0) = adr.GetValue(0)
				matr(i, 1) = Math.Round(adr.GetValue(1), 4, MidpointRounding.AwayFromZero).ToString
				i = i + 1
			End While
			adr.Close()
			cmd.Dispose()
			buidChart(matr)
			DataGridView1.DataSource = Nothing
			DataGridView1.DataSource = CreateDataView(matr)
			conn.Close()
		End If
	End Sub
End Class

	' app-code6(additional_functions_and_procedure) '
	Private Sub buidChart(matrix As Array)
		Chart1.Series.Clear()
		Dim noLines As Integer
		Dim noCols As Integer
		noCols = matrix.GetLength(1) - 1
		noLines = matrix.GetLength(0) - 1
		For k = 1 To noCols
			Chart1.Series.Add(matrix(0, k))
		Next
		For l = 1 To noLines
			For k = 1 To noCols
				Chart1.Series(matrix(0, k)).Points.AddXY(matrix(1, 0), matrix(1, k))
			Next
		Next
	End Sub
	
	Function CreateDataView(matrix As Array) As ICollection
		Dim noLines As Integer
		Dim noCols As Integer
		noCols = matrix.GetLength(1) - 1
		noLines = matrix.GetLength(0) - 1
		Dim dt As New DataTable()
		Dim dr As DataRow
		If matrix.Length > 1 Then
			dt.Columns.Add(New DataColumn("Description", GetType(String)))
			dt.Columns.Add(New DataColumn("Probability", GetType(String)))
			Dim k, l As Integer
			For l = 0 To noLines
				dr = dt.NewRow()
				For k = 0 To NoCols
					dr(k) = matrix(l, k)
				Next
				dt.Rows.Add(dr)
			Next
		End If
		Dim dv As New DataView(dt)
		Return dv
	End Function
	
	Function get_adr_no_of_lines(cmd As AdomdCommand) As Integer
		Dim adr As AdomdDataReader
		adr = cmd.ExecuteReader()
		Dim i As Integer = 0
		While (adr.Read)
			i = i + 1
		End While
		adr.Close()
		Return i
	End Function
	
	
	' 12.4 simple app ex.to query the comp.of a DM model based on clustering '
	' 2.Source code to adapt '
	Imports Microsoft.AnalysisServices.AdomdClient
	Public Class Form1
		Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
			Dim conexiune As AdomdConnection
			conexiune = New AdomdConnection("Provider=MSOLAP;Integrated=SSPI; Data Source=Localhost;Initial Catolog=DepozitUnu;")
			Dim comanda = As New AdomdCommand
			conexiune.Open()
			comanda.Connection = conexiune
			comanda.CommandText = "SELECT NODE_NAME, NODE_CAPTION, NODE_SUPPORT, NODE_DESCRIPTION FROM (mmnClustering-StoreCost-Product_StoreSales).CONTENT WHERE NODE_TYPE=5 AND NODE_SUPPORT>100"
			Dim linie_decitit As AdomdDataReader
			linie_decitit = comanda.ExecuteReader
			Dim i, j, k As Integer
			Dim matrice(3, 1) As String
			i = 0
			While (linie_decitit.Read)
				MessageBox.Show("Nume:" & linie_decitit.GetValue(0).ToString & Chr(13) & "Titlu:" & linie_decitit.GetValue(1).ToString & Chr(13) & "Nr.Noduri:" & linie_decitit.GetValue(2).ToString & Chr(13) & "Descriere Completa:" & linie_decitit.GetValue(3).ToString)
				matrice(i, 0) = linie_decitit.GetValue(1).ToString
				matrice(i, 1) = linie_decitit.GetValue(2).ToString
				i = i + 1
			End While
			Dim lin As String
			For j = 0 To i - 1
				lin = ""
				For k = 0 To 1
					lin = lin + " " + matrice(j, k)
				Next
				'MessageBox.Show(lin)'
			Next
			Chart1.ChartData = matrice
		End Sub
	End Class
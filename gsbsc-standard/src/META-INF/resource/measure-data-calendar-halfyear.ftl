<#setting number_format="0.##">
<input type="hidden" name="BSC_PROG002D0005Q_dataFor" id="BSC_PROG002D0005Q_dataFor" value="${dataFor}" />
<input type="hidden" name="BSC_PROG002D0005Q_frequency" id="BSC_PROG002D0005Q_frequency" value="${frequency}" />
<input type="hidden" name="BSC_PROG002D0005Q_empId" id="BSC_PROG002D0005Q_empId" value="${empId}" />
<input type="hidden" name="BSC_PROG002D0005Q_orgId" id="BSC_PROG002D0005Q_orgId" value="${orgId}" />
<input type="hidden" name="BSC_PROG002D0005Q_queryCalendar" id="BSC_PROG002D0005Q_queryCalendar" value="Y" />
<table width="100%" border="0" cellspacing="1" cellpadding="1" bgcolor="#E9E9E9" style="border:1px #E9E9E9 solid; border-radius: 5px;">		
	<tr>
		<td colspan="2" bgcolor="#E9E9E9" align="center">
			<b><font color="#333333" size="+1">${kpi.name}</font></b>
		</td>
	</tr>	
	<tr>
		<td colspan="2" bgcolor="#F6F6F6" align="center">
			<font color="#333333" size="2"><b>${management}:</b>${managementName}, <b>${calculation}:</b>${calculationName}, <b>${unit}:</b>${kpi.unit}, <b>${target}:${kpi.target}, <b>${min}:</b>${kpi.min}</font>
		</td>
	</tr>				
	<tr>
		<td colspan="2" bgcolor="#F6F6F6" align="center">
			<font color="#333333" size="2"><b>${formulaName}:</b>${formula.name}</font>
		</td>
	</tr>		
	<tr>
		<td colspan="2" bgcolor="#F6F6F6" align="center">
			<img src="./images/go-previous.png" alt="prev" border="0" onclick="BSC_PROG002D0005Q_prevCalendar();" title="click to query The previous period" />
			&nbsp;
			<b><font color="#333333" size="+3">${yyyy}</font></b>
			&nbsp;
			<img src="./images/go-next.png" alt="next" border="0" onclick="BSC_PROG002D0005Q_nextCalendar();" title="click to query Next period" />
		</td>
	</tr>	
	<tr>
		<td bgcolor="#F6F6F6" width="14%"><div align="center"><b><font color="#333333" size="+1">First half</font></b></div></td>
		<td bgcolor="#F6F6F6" width="14%"><div align="center"><b><font color="#333333" size="+1">After six months</font></b></div></td>
	</tr>	
	
	<tr>
		<td bgcolor="#FFFFFF" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"0101" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>				
			
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}0101" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-9999999.00,max:9999999.00, locale: 'en-us'},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="10" />							
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}0101" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-9999999.00,max:9999999.00, locale: 'en-us'},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="10" />								
					</td>														
				</tr>						
			</table> 
			
		</td>	
		<td bgcolor="#FFFFFF" align="center">
				
			<#assign targetValue = "" >
			<#assign actualValue = "" >
			<#list masureDatas as masure >
				<#if masure.date == yyyy+"0701" >
					<#assign targetValue = masure.target >
					<#assign actualValue = masure.actual >					
				</#if>
			</#list>
			
			<table border="0" width="85px">
				<tr>
					<td width="15px" align="center">
						T:
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_TARGET:${yyyy}0701" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${targetValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-9999999.00,max:9999999.00, locale: 'en-us'},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="10" />						
					</td>														
				</tr>
				<tr>
					<td width="15px" align="center">
						A:	
					</td>
					<td width="70px" align="center">
						<input name="MEASURE_DATA_ACTUAL:${yyyy}0701" 
							type="text"
						    data-dojo-type="dijit/form/NumberTextBox"
						    value="${actualValue}"
						    data-dojo-props="constraints:{pattern: '#.##',min:-9999999.00,max:9999999.00, locale: 'en-us'},
						    invalidMessage:'Please enter a numeric value.',
						    rangeMessage:'Invalid value.'" 
						    style="width: 70px;"
						    maxlength="10" />							
					</td>														
				</tr>						
			</table> 			
			
		</td>						
	</tr>		
	
	<tr>
		<td bgcolor="#E9E9E9" colspan="2"><b><font color="#333333">T (${targetValueName}) , A (${actualValueName})</font></b></td>
	</tr>		
</table>	
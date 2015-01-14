<!-- target: dataList -->
    <!-- if : ${dataList} && ${dataList.length} -->                
        <table>    
            <caption align="top" class="title">saber获取数据</caption>         
            <!-- for: ${dataList} as ${item} -->
            <tr>
                <td>
                    <span>${item.name}</span>
                </td>
                <td>
                    <span>${item.age}</span>
                </td>
                <!-- import: dataItem -->
            </tr>   
            <!-- /for -->
        </table> 
    <!-- else -->
        <div>
            <div class="error">数据出现问题，无法正常显示哟！！</div>
        </div>
    <!-- /if -->

<!-- target: dataItem -->
    <!-- for: ${item.info} as ${info} -->
        <td>
        	<span>${info.address}</span>
        </td>
        <td>
        	<!-- if: ${info.sex} -->
            <span>女</span>
            <!-- else --> 
            <span>男</span>
            <!-- /if --> 
        </td> 
        <!-- if: ${info.homeInfo} -->
        <!-- use: homeInfo(data=${info.homeInfo}) -->
        <!-- else -->
        <!-- use: homeInfono -->
        <!-- /if -->           
    <!-- /for -->

    

<!-- target: homeInfo -->
    <!-- for: ${data} as ${item} -->
    <td>
    	<span>${item.city}</span>
    </td>
    <td>
    	<span>${item.phone}</span>
    </td> 
    <td>
    	<span>${item.departNum}</span> 
    </td>   
    <!-- /for -->          

<!-- target: homeInfono -->
    <td colspan="3">
    	<span>没有登记住房信息</span>
    </td>
    
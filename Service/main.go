package main

import (
	"fmt"
	"net/http"
	//"strings"
	//"log"
	"time"
	//"strconv"
	//"os/exec"
	//"os"
	"io/ioutil"
	//"path/filepath"
	//"io/ioutil"
	"github.com/lucky2me/log"
	"reflect"

)




// Formal 全局变量
//var IPAddress string = "www.movingdt.com"
//var Port int64 = 33333
//var Account string = "admin" 
//var Password string = "a1234567"


func WriteContent(IPAddress string,Port string,Account string,Password string){

	tempStr := IPAddress+"|"+Port+"|"+Account+"|"+Password
	logger.Info("\n[======WriteContent "+time.Unix(time.Now().Unix(), 0).In(cstSh).Format("20060102-15:04:05")+"======")
	var d1 = []byte(tempStr)
	err := ioutil.WriteFile("./info.txt", d1, 0666) //写入文件(字节数组)
    if err != nil {
        logger.Error("Err:WriteFile Failure!")
    }else{
    	logger.Info("Success:"+tempStr)
    }
}


func Test(w http.ResponseWriter, r *http.Request){
	fmt.Fprintf(w, "test666")
	//WriteContent(IPAddress,Port,Account,Password)
}

var CurConvertFile string
var logger log.Logger
var cstSh *time.Location

func main() {

	logger = log.NewLogger("./log/", log.LoggerLevelInfo)
	CurConvertFile = ""
	cstSh, _ = time.LoadLocation("Asia/Shanghai") //上海
	fmt.Println(reflect.TypeOf(cstSh))

	http.HandleFunc("/test", Test) //设置访问的路由

	http.Handle("/fileList/", http.StripPrefix("/fileList/", http.FileServer(http.Dir("./files"))))
	err := http.ListenAndServe(":8088", nil) //设置监听的端口
	if err != nil {
		logger.Error("Init===>ListenAndServe: ", err)
		fmt.Println("Init===>ListenAndServe: ", err)
	}else{
		fmt.Println("Init===>ListenAndServe: 8088")
	}
}


.class public Lcom/google/appinventor/components/runtime/MakeroidFtp;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "write in ode"
    iconName = "images/ftp.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "commons-net.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.READ_EXTERNAL_STORAGE"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/MakeroidFtp$c;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$d;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$b;,
        Lcom/google/appinventor/components/runtime/MakeroidFtp$a;
    }
.end annotation


# instance fields
.field private ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:I

.field private D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

.field private FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

.field private l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Ljava/lang/String;

.field private sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 61
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string p1, "/"

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    const-string p1, "ftp.example.org"

    .line 54
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    const-string p1, "Your Username"

    .line 55
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    const-string p1, ""

    .line 56
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Ljava/lang/String;

    const/16 p1, 0x15

    .line 57
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:I

    .line 62
    new-instance p1, Lorg/apache/commons/net/ftp/FTPClient;

    invoke-direct {p1}, Lorg/apache/commons/net/ftp/FTPClient;-><init>()V

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    const-string p1, "Makeroid Ftp"

    const-string v0, "Makeroid Ftp Created"

    .line 64
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)I
    .locals 0

    .line 50
    iget p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:I

    return p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Lorg/apache/commons/net/ftp/FTPClient;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    return-object p0
.end method

.method static synthetic wq07duYRO6iFAgWM70EZOSvbCMKs1QznMRJKrct0XuHOBYqCk3XqOKtSBGIpDou(Lcom/google/appinventor/components/runtime/MakeroidFtp;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public Connect()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the connection to the ftp server."
    .end annotation

    .line 178
    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidFtp$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public ConnectError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a try to connect was not successful."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ConnectError"

    .line 400
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public ConnectionStatus(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the status of the connection. If it is connect it will return true, else false. "
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 372
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "ConnectionStatus"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public Disconnect()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Disconnect the current connection."
    .end annotation

    .line 209
    new-instance v0, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;B)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidFtp$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public DisconnectError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a try to disconnect was not successful."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DisconnectError"

    .line 406
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadDone()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked when the download is finished."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DownloadDone"

    .line 382
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a download was not successful."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DownloadError"

    .line 394
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public DownloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start downloading a file."
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$2;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public FtpServer()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp server url."
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    return-object v0
.end method

.method public FtpServer(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "ftp.example.org"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp server url."
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->sk5rMw9RgYy71OTPvOENAp3eApfAT8tLYhxGtg9aKlffH3QIqZgsCnaQ8Le0fA:Ljava/lang/String;

    return-void
.end method

.method public GetListOfFiles(Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/YailList;
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get a list of files in a directory. Returns a empty list if a error occurs."
    .end annotation

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->listFiles(Ljava/lang/String;)[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object p1

    .line 164
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 165
    invoke-virtual {v3}, Lorg/apache/commons/net/ftp/FTPFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList([Ljava/lang/Object;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 170
    :catch_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1

    .line 173
    :cond_1
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/YailList;->makeEmptyList()Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object p1

    return-object p1
.end method

.method public Password()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the password."
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Ljava/lang/String;

    return-object v0
.end method

.method public Password(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the password to login into the ftp server."
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->l1RC65VA1OrEFGFIoMpcm9UdXKH0b4XYT6Sp5a4IfmUrLMcXzEdiTdgfLz7JJ5B0:Ljava/lang/String;

    return-void
.end method

.method public Port()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp port number."
    .end annotation

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:I

    return v0
.end method

.method public Port(I)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "21"
        editorType = "integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp port number."
    .end annotation

    .line 103
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->ATBpAON767TQmZZYK3lMfxQA5S6eF21JqXY9TAJY6l4cbZGeVMlZehfHdCrTaqio:I

    return-void
.end method

.method public UploadDone()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event is invoked when the upload is finished."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UploadDone"

    .line 377
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadError(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "This event returns the reason if a upload was not successful."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "UploadError"

    .line 388
    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public UploadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start uploading a file."
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/appinventor/components/runtime/MakeroidFtp$1;-><init>(Lcom/google/appinventor/components/runtime/MakeroidFtp;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, p1, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    return-void
.end method

.method public Username()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the username."
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    return-object v0
.end method

.method public Username(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Your Username"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the username to login into the ftp server."
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->D5WW7ko68TBhY3rWGJixZsWe3BbuoJE4ehTpLkVzvzCwqdv8qeJ2dPQYU5v0Rxk:Ljava/lang/String;

    return-void
.end method

.method public WorkingDirectory()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->APPEARANCE:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Returns the ftp working dir."
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    return-object v0
.end method

.method public WorkingDirectory(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "/"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the ftp working dir."
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->FlE8cJN9pJT0vK7EOYVYVCxuB0sJcG6jpZ55tqfSsTRV8K3RkDe9yvLjVOLhsxDi:Ljava/lang/String;

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->changeWorkingDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 75
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Ftp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public deleteDir(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Delete a directory on the ftp server."
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->removeDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkdiRd"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Ftp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public makeDir(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Make/create a directory on the ftp server."
    .end annotation

    .line 141
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidFtp;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/commons/net/ftp/FTPClient;

    invoke-virtual {v0, p1}, Lorg/apache/commons/net/ftp/FTPClient;->makeDirectory(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mkdiRd"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Makeroid Ftp"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class final Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;


# direct methods
.method private constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 119
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;B)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;-><init>(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 118
    check-cast p1, [Ljava/lang/String;

    const/4 v0, 0x0

    .line 2122
    aget-object p1, p1, v0

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/KodularUtil;->GET_REQUEST(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    .line 2123
    sget-boolean p1, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_SUCCESS:Z

    if-nez p1, :cond_1

    .line 2124
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result p1

    const/4 v1, 0x1

    const-string v2, "Error - no data"

    if-ne p1, v1, :cond_0

    .line 2125
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2127
    :cond_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 2128
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    sget-object v1, Lcom/google/appinventor/components/runtime/util/KodularUtil;->REQUEST_ERROR_MESSAGE:Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    .line 2132
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->KbzcIEn6WDqjdY1QBot1TMrBwhEYy4xAUKG2cbzQ22VNohlOtuBGKUJsEeMNZyEH:Ljava/lang/String;

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 118
    check-cast p1, Ljava/lang/String;

    const-string v0, "data"

    const-string v1, "Error - no data"

    .line 1137
    invoke-static {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    const-string v2, "Error - no message"

    .line 1138
    invoke-static {p1, v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    .line 1139
    invoke-static {p1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->GetJsonAsBoolean(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 1140
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1141
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnRequestSent(ZLjava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1142
    :cond_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 1143
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/appinventor/components/runtime/MakeroidInstantAccess;->OnStatusReceived(ZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

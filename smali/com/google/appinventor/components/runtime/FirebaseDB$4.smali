.class final Lcom/google/appinventor/components/runtime/FirebaseDB$4;
.super Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/FirebaseDB;->RemoveFirst(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/FirebaseDB;Lcom/google/appinventor/components/runtime/FirebaseDB$a;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p1, p2}, Lcom/google/appinventor/components/runtime/FirebaseDB$Transactional;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/appinventor/components/runtime/FirebaseDB$a;)V

    return-void
.end method


# virtual methods
.method final run(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;
    .locals 4

    const-string v0, "Invalid JSON object in database (shouldn\'t happen!)"

    .line 684
    invoke-virtual {p1}, Lcom/firebase/client/MutableData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 686
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Previous value was empty."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 687
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 690
    :cond_0
    :try_start_0
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 691
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getObjectFromJson(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 700
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 701
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 702
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "The list was empty"

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 703
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 705
    :cond_1
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v2, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->vwEpIRqEf6xdtwTR9dehwBO7JUhyLV6iEzEK2WqfPN10eUMQDPn3AUmqAFfsnr6R:Ljava/lang/Object;

    .line 707
    :try_start_1
    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/YailList;->makeList(Ljava/util/List;)Lcom/google/appinventor/components/runtime/util/YailList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/JsonUtil;->getJsonRepresentation(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 712
    invoke-virtual {p1, v0}, Lcom/firebase/client/MutableData;->setValue(Ljava/lang/Object;)V

    .line 713
    invoke-static {p1}, Lcom/firebase/client/Transaction;->success(Lcom/firebase/client/MutableData;)Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 709
    :catch_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "Could not convert value to JSON."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 710
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 715
    :cond_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    const-string v0, "You can only remove elements from a list."

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 716
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1

    .line 693
    :cond_3
    :try_start_2
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 694
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p1

    .line 697
    :catch_1
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/FirebaseDB$4;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/FirebaseDB$a;

    iput-object v0, p1, Lcom/google/appinventor/components/runtime/FirebaseDB$a;->M2XSrcNVsTj86KbWYhtzmFwqCl4FRN4hJC3YQ2jC5nTG9V14APZgqJsIs4HMKSeu:Ljava/lang/String;

    .line 698
    invoke-static {}, Lcom/firebase/client/Transaction;->abort()Lcom/firebase/client/Transaction$Result;

    move-result-object p1

    return-object p1
.end method

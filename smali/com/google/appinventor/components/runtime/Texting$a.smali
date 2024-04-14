.class final Lcom/google/appinventor/components/runtime/Texting$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/appinventor/components/runtime/Texting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Texting;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/Texting;)V
    .locals 0

    .line 1084
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Texting;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string p1, "Texting Component"

    const-string v0, "Authenticating"

    .line 3088
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3091
    new-instance p1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;

    invoke-direct {p1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;-><init>()V

    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "grandcentral"

    invoke-virtual {p1, v0, v1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1084
    check-cast p1, Ljava/lang/String;

    .line 2099
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "authToken = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Texting Component"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Texting$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/Texting;->access$602(Lcom/google/appinventor/components/runtime/Texting;Ljava/lang/String;)Ljava/lang/String;

    .line 2102
    invoke-static {}, Lcom/google/appinventor/components/runtime/Texting;->access$400()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "Finished authentication"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2105
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/Texting$a;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/Texting;

    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Texting;->access$700(Lcom/google/appinventor/components/runtime/Texting;)V

    return-void
.end method

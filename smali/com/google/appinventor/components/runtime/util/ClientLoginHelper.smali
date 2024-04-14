.class public Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/util/IClientLoginHelper;


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

.field private activity:Landroid/app/Activity;

.field private authToken:Ljava/lang/String;

.field private h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

.field private initialized:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/client/HttpClient;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    .line 60
    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    if-nez p4, :cond_0

    .line 61
    new-instance p4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {p4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    .line 62
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    .line 63
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p4

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    .line 64
    new-instance p4, Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-direct {p4, p1, p2, p3, p2}, Lcom/google/appinventor/components/runtime/util/AccountChooser;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;)V
    .locals 6

    .line 129
    invoke-interface {p0}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 130
    invoke-interface {v3}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Authorization"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 131
    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GoogleLogin auth="

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 132
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Removing header:"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ClientLoginHelper"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-interface {p0, v3}, Lorg/apache/http/client/methods/HttpUriRequest;->removeHeader(Lorg/apache/http/Header;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 123
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adding auth token token: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClientLoginHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleLogin auth="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Authorization"

    invoke-interface {p0, v0, p1}, Lorg/apache/http/client/methods/HttpUriRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    const-string v1, "ClientLoginHelper"

    if-nez v0, :cond_1

    const-string v0, "initializing"

    .line 1073
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1077
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    const/4 v0, 0x1

    .line 1078
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->initialized:Z

    goto :goto_0

    .line 1075
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t initialize login helper from UI thread"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_2

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Invalid token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v0, v3, v2}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->getAuthToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    .line 101
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 102
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;)V

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "new token: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, p1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method public forgetAccountName()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->forgetAccountName()V

    return-void
.end method

.method public getAuthToken()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/client/ClientProtocolException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:Lcom/google/appinventor/components/runtime/util/AccountChooser;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/AccountChooser;->findAccount()Landroid/accounts/Account;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/accounts/AccountManager;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->h8Png9oaVDfYGvgWdHcn1DMBnn2tbT5MRZoUvXvvhLrY5O6ybby2QmTOJ6PZJucW:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/appinventor/components/runtime/util/ClientLoginHelper;->activity:Landroid/app/Activity;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 147
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Have account, auth token: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ClientLoginHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "authtoken"

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 153
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    .line 160
    :cond_0
    :goto_0
    new-instance v0, Lorg/apache/http/client/ClientProtocolException;

    const-string v1, "Can\'t get valid authentication token"

    invoke-direct {v0, v1}, Lorg/apache/http/client/ClientProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lcom/google/appinventor/components/runtime/util/OAuth2Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PREF_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field public static final PREF_AUTH_TOKEN:Ljava/lang/String; = "authToken"

.field public static final TAG:Ljava/lang/String; = "OAuthHelper"

.field private static YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String; = "Error during OAuth"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMessage()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getErrorMessage = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OAuthHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    sget-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String;

    return-object v0
.end method

.method public static resetAccountCredential(Landroid/app/Activity;)V
    .locals 2

    const-string v0, "OAuthHelper"

    const-string v1, "Reset credentials"

    .line 212
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 214
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "authToken"

    .line 215
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v0, "accountName"

    .line 216
    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 217
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getRefreshedAuthToken(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 21

    move-object/from16 v10, p1

    const-string v0, "OAuthHelper"

    const-string v1, "getRefreshedAuthToken()"

    .line 89
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 95
    invoke-virtual {v10, v1}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "accountName"

    const/4 v1, 0x0

    .line 96
    invoke-interface {v11, v12, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v13, "authToken"

    .line 99
    invoke-interface {v11, v13, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 102
    new-instance v3, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    invoke-direct {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;-><init>()V

    .line 103
    invoke-virtual {v3, v14}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->setAccessToken(Ljava/lang/String;)Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;

    .line 2151
    new-instance v4, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;

    invoke-direct {v4, v10}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;-><init>(Landroid/content/Context;)V

    .line 2158
    invoke-virtual {v3}, Lcom/google/api/client/googleapis/auth/oauth2/GoogleCredential;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->invalidateAuthToken(Ljava/lang/String;)V

    .line 2159
    invoke-static/range {p1 .. p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    move-object/from16 v5, p2

    invoke-virtual {v3, v5, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 2163
    invoke-virtual {v4, v2}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountByName(Ljava/lang/String;)Landroid/accounts/Account;

    move-result-object v16

    if-eqz v16, :cond_0

    const-string v1, "Getting token by account"

    .line 2169
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v15

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v17, p2

    invoke-virtual/range {v15 .. v20}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Getting token by features, possibly prompting user to select an account"

    .line 2175
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    invoke-virtual {v4}, Lcom/google/api/client/googleapis/extensions/android2/auth/GoogleAccountManager;->getAccountManager()Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "com.google"

    move-object/from16 v3, p2

    move-object/from16 v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/accounts/AccountManager;->getAuthTokenByFeatures(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v1

    .line 113
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    .line 114
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v2, "authAccount"

    .line 117
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Persisting credentials, acct ="

    .line 2198
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2200
    invoke-interface {v0, v12, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2201
    invoke-interface {v0, v13, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "Error: I/O error"

    .line 128
    sput-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String;

    goto :goto_1

    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {v0}, Landroid/accounts/AuthenticatorException;->printStackTrace()V

    const-string v0, "Error: Authenticator error"

    .line 125
    sput-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String;

    goto :goto_1

    :catch_2
    move-exception v0

    .line 120
    invoke-virtual {v0}, Landroid/accounts/OperationCanceledException;->printStackTrace()V

    .line 121
    invoke-static/range {p1 .. p1}, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->resetAccountCredential(Landroid/app/Activity;)V

    const-string v0, "Error: operation cancelled"

    .line 122
    sput-object v0, Lcom/google/appinventor/components/runtime/util/OAuth2Helper;->YPNDRC6guNtR9Y1y2H2jw2eNOGhWZENW1YRifRdfZVF6tZ3Hhm9vVsLmqobDf9o1:Ljava/lang/String;

    :goto_1
    return-object v14

    .line 92
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get authtoken from UI thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

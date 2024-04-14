.class public Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;,
        Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$Ads;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adEvent(Ljava/lang/String;Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .line 71
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    .line 72
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object p2

    const-string v1, "App ID"

    invoke-virtual {v0, v1, p2}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p2

    const-string v0, "Network"

    .line 73
    invoke-virtual {p2, v0, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    const-string p2, "Format"

    .line 74
    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 3133
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    const-string p1, "Ads"

    .line 71
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 96
    invoke-static {p0}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;)V

    return-void

    .line 98
    :cond_0
    invoke-static {p0, p1}, Lcom/microsoft/appcenter/analytics/Analytics;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Landroid/content/Context;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 4

    .line 41
    invoke-static {}, Lcom/microsoft/appcenter/AppCenter;->isConfigured()Z

    move-result v0

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->IsCompanion()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "18e6b6d5-7c2b-4a1a-9042-e3448b8c323c"

    goto :goto_0

    :cond_0
    const-string v0, "34294338-ee8e-4726-a3aa-9a17934f7bcc"

    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lcom/microsoft/appcenter/analytics/Analytics;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/microsoft/appcenter/crashes/Crashes;

    aput-object v3, v1, v2

    .line 42
    invoke-static {p0, v0, v1}, Lcom/microsoft/appcenter/AppCenter;->start(Landroid/app/Application;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 50
    :cond_1
    new-instance p0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    .line 51
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "App ID"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 52
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->getKodularPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Regular Package Name"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 53
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Custom Package Name"

    invoke-virtual {p0, v1, v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 54
    invoke-static {p1}, Lcom/google/appinventor/components/runtime/Form;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "App Name"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 55
    invoke-static {}, Lcom/google/appinventor/common/version/GitBuildId;->getVersion()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Kodular Version"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 56
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->getInstalledFrom()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Installed From"

    invoke-virtual {p0, v0, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 57
    invoke-virtual {p2}, Lcom/google/appinventor/components/runtime/Form;->isCustomPackage()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Yes"

    goto :goto_1

    :cond_2
    const-string p1, "No"

    :goto_1
    const-string p2, "Is Custom"

    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 1133
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    const-string p1, "App Started"

    .line 50
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .line 80
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    .line 81
    invoke-virtual {p4}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object p4

    const-string v1, "App ID"

    invoke-virtual {v0, v1, p4}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p4

    const-string v0, "Component"

    .line 82
    invoke-virtual {p4, v0, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    const-string p4, "Block"

    .line 83
    invoke-virtual {p0, p4, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Code"

    .line 84
    invoke-virtual {p0, p2, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    const-string p1, "Message"

    .line 85
    invoke-virtual {p0, p1, p3}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 4133
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    const-string p1, "Error Occurred"

    .line 80
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static screenOpen(Ljava/lang/String;Lcom/google/appinventor/components/runtime/Form;)V
    .locals 2

    .line 63
    new-instance v0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    invoke-direct {v0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/google/appinventor/components/runtime/Form;->getAppId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "App ID"

    invoke-virtual {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p1

    const-string v0, "Screen Name"

    .line 65
    invoke-virtual {p1, v0, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/lang/String;)Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;

    move-result-object p0

    .line 2133
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil$a;->moH2L3ThNq0Qhevz3oD0wpnUoXefdMi3gJ5JHfEbjrtgsvRvpM1e34BZQYI4s5i0:Ljava/util/Map;

    const-string p1, "Screen"

    .line 63
    invoke-static {p1, p0}, Lcom/google/appinventor/components/runtime/util/KodularAnalyticsUtil;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

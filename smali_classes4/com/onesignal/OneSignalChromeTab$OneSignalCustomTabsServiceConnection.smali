.class Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "OneSignalChromeTab.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignalChromeTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OneSignalCustomTabsServiceConnection"
.end annotation


# instance fields
.field private openActivity:Z

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->url:Ljava/lang/String;

    .line 65
    iput-boolean p2, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->openActivity:Z

    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    .line 73
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    const/4 p1, 0x0

    .line 75
    invoke-virtual {p2, p1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 80
    invoke-virtual {p2, v0, p1, p1}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    .line 83
    iget-boolean p1, p0, Lcom/onesignal/OneSignalChromeTab$OneSignalCustomTabsServiceConnection;->openActivity:Z

    if-eqz p1, :cond_3

    .line 84
    new-instance p1, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {p1, p2}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>(Landroidx/browser/customtabs/CustomTabsSession;)V

    .line 85
    invoke-virtual {p1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object p1

    .line 86
    iget-object p2, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 87
    iget-object p2, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 88
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p2, v0, :cond_2

    .line 89
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object v0, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 91
    :cond_2
    sget-object p2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    iget-object p1, p1, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

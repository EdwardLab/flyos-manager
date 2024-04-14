.class public Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String; = null

.field private static LOG_TAG:Ljava/lang/String; = "KodularChromeCustomTabsHelper"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPackageNameToUse(Landroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 57
    sget-object v0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/content/Intent;

    const-string v2, "http://www.example.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 65
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v3, v4

    .line 69
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 70
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 72
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    const-string v9, "android.support.customtabs.action.CustomTabsService"

    .line 73
    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    iget-object v9, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 75
    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 76
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 83
    sput-object v4, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    .line 84
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    .line 85
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    .line 86
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 87
    invoke-static {p0, v1}, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-nez p0, :cond_6

    .line 88
    invoke-interface {v6, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 89
    sput-object v3, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string p0, "com.android.chrome"

    .line 90
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 91
    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const-string p0, "com.chrome.beta"

    .line 92
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    :cond_8
    const-string p0, "com.chrome.dev"

    .line 94
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 95
    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    goto :goto_2

    :cond_9
    const-string p0, "com.google.android.apps.chrome"

    .line 96
    invoke-interface {v6, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    sput-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    .line 99
    :cond_a
    :goto_2
    sget-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->Czk3JxQndp8OXzdhVJbUdjsQzir0LjcvTO4sxxzJFetSb3s5Ea1z9Q4DZEvMPAr1:Ljava/lang/String;

    return-object p0
.end method

.method public static getPackages()[Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const-string v1, "com.android.chrome"

    const-string v2, "com.chrome.beta"

    const-string v3, "com.chrome.dev"

    const-string v4, "com.google.android.apps.chrome"

    .line 133
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 109
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x40

    .line 110
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 113
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 117
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0

    .line 124
    :catch_0
    sget-object p0, Lcom/google/appinventor/components/runtime/util/KodularChromeCustomTabsHelper;->LOG_TAG:Ljava/lang/String;

    const-string p1, "Runtime exception while getting specialized handlers"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v0
.end method

.class Lcom/onesignal/BadgeCountUpdater;
.super Ljava/lang/Object;
.source "BadgeCountUpdater.java"


# static fields
.field private static badgesEnabled:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static areBadgeSettingsEnabled(Landroid/content/Context;)Z
    .locals 4

    .line 51
    sget v0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 55
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x80

    invoke-virtual {v0, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 56
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_3

    const-string v0, "com.onesignal.BadgeCount"

    .line 58
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DISABLE"

    .line 59
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    :goto_0
    sput p0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    goto :goto_1

    .line 62
    :cond_3
    sput v2, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 64
    sput v1, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    .line 65
    sget-object v0, Lcom/onesignal/OneSignal$LOG_LEVEL;->ERROR:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v3, "Error reading meta-data tag \'com.onesignal.BadgeCount\'. Disabling badge setting."

    invoke-static {v0, v3, p0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    :goto_1
    sget p0, Lcom/onesignal/BadgeCountUpdater;->badgesEnabled:I

    if-ne p0, v2, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private static areBadgesEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 72
    invoke-static {p0}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/onesignal/OSUtils;->areNotificationsEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static update(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgesEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 79
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 80
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->updateStandard(Landroid/content/Context;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateFallback(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method static updateCount(ILandroid/content/Context;)V
    .locals 1

    .line 118
    invoke-static {p1}, Lcom/onesignal/BadgeCountUpdater;->areBadgeSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 122
    :cond_0
    :try_start_0
    invoke-static {p1, p0}, Lcom/onesignal/shortcutbadger/ShortcutBadger;->applyCountOrThrow(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/onesignal/shortcutbadger/ShortcutBadgeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private static updateFallback(Lcom/onesignal/OneSignalDb;Landroid/content/Context;)V
    .locals 10

    .line 103
    invoke-static {}, Lcom/onesignal/OneSignalDbHelper;->recentUninteractedWithNotificationsWhere()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Lcom/onesignal/NotificationLimitManager;->MAX_NUMBER_OF_NOTIFICATIONS_STR:Ljava/lang/String;

    const-string v2, "notification"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 100
    invoke-interface/range {v1 .. v9}, Lcom/onesignal/OneSignalDb;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 111
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 112
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 114
    invoke-static {v0, p1}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    return-void
.end method

.method private static updateStandard(Landroid/content/Context;)V
    .locals 5

    .line 87
    invoke-static {p0}, Lcom/onesignal/OneSignalNotificationManager;->getActiveNotifications(Landroid/content/Context;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 91
    invoke-static {v4}, Lcom/onesignal/NotificationLimitManager;->isGroupSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-static {v3, p0}, Lcom/onesignal/BadgeCountUpdater;->updateCount(ILandroid/content/Context;)V

    return-void
.end method

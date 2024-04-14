.class public final Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "Shortcut Badge component"
    iconName = "images/notification.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesLibraries;
    value = {
        "ShortcutBadger.aar",
        "ShortcutBadger.jar"
    }
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "com.android.launcher.permission.READ_SETTINGS",
        "com.android.launcher.permission.WRITE_SETTINGS",
        "com.android.launcher.permission.INSTALL_SHORTCUT",
        "com.android.launcher.permission.UNINSTALL_SHORTCUT",
        "com.sec.android.provider.badge.permission.READ",
        "com.sec.android.provider.badge.permission.WRITE",
        "com.htc.launcher.permission.READ_SETTINGS",
        "com.htc.launcher.permission.UPDATE_SHORTCUT",
        "com.sonyericsson.home.permission.BROADCAST_BADGE",
        "com.sonymobile.home.permission.PROVIDER_INSERT_BADGE",
        "com.anddoes.launcher.permission.UPDATE_COUNT",
        "com.majeur.launcher.permission.UPDATE_BADGE",
        "com.huawei.android.launcher.permission.CHANGE_BADGE",
        "com.huawei.android.launcher.permission.READ_SETTINGS",
        "com.huawei.android.launcher.permission.WRITE_SETTINGS",
        "android.permission.READ_APP_BADGE",
        "com.oppo.launcher.permission.READ_SETTINGS",
        "com.oppo.launcher.permission.WRITE_SETTINGS",
        "me.everything.badger.permission.BADGE_COUNT_READ",
        "me.everything.badger.permission.BADGE_COUNT_WRITE"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 58
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 59
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final ApplyCount(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to apply a notification badge count."
    .end annotation

    .line 64
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    .line 65
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lme/leolin/shortcutbadger/ShortcutBadger;->applyCount(Landroid/content/Context;I)Z

    return-void
.end method

.method public final Count()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to return the notification count."
    .end annotation

    .line 70
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->nKfZQ1laYcwrzNEumUwCbmi2kaHgg3eE1c9SDtYVLTkiuRTWxcP8Pqqx3AbL5ow:I

    return v0
.end method

.method public final RemoveCount()V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Use this block to remove the notification badge count."
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidShortcutBadge;->context:Landroid/content/Context;

    invoke-static {v0}, Lme/leolin/shortcutbadger/ShortcutBadger;->removeCount(Landroid/content/Context;)Z

    return-void
.end method

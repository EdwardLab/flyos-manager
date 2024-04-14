.class public final Lcom/google/appinventor/components/runtime/NotificationComponent;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->INTERNAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to send a notification to the users device"
    iconName = "images/notification.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

.field private sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

.field private x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 62
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:I

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 64
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 66
    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 380
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 381
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "APP_INVENTOR_START"

    .line 383
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public final AreNotificationsEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check whether the app can send Notifications"
    .end annotation

    .line 216
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public final CancelAll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel all Notifications"
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    const-string v0, "NotificationComponent"

    const-string v1, "All Notifications Cancelled"

    .line 225
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final CancelNotification(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel a Notification with an id"
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " canceled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NotificationComponent"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderAndroidCar(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the accent color for Android Car devices"
    .end annotation

    .line 315
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$CarExtender;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$CarExtender;-><init>()V

    .line 316
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$CarExtender;->setColor(I)Landroidx/core/app/NotificationCompat$CarExtender;

    move-result-object p1

    .line 315
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Android Car Accent Color Added"

    .line 318
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderAndroidWear(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the background image for Android Wear devices"
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 301
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$WearableExtender;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$WearableExtender;-><init>()V

    .line 308
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$WearableExtender;->setBackground(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$WearableExtender;

    move-result-object p1

    .line 307
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->extend(Landroidx/core/app/NotificationCompat$Extender;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Android Wear Background Image Added"

    .line 310
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 303
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification IOException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderAutoCancel(Z)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set whether the notification should me removed after the user clicks on it."
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Notification Auto Cancel Added"

    .line 267
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderBigPicture(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the big picture for the notification"
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    .line 283
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v0}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    new-instance v1, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 290
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p1

    .line 289
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Notifications Big Picture Added"

    .line 292
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception p1

    .line 285
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Notification IOException"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderID(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification id."
    .end annotation

    .line 254
    iput p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:I

    const-string p1, "NotificationComponent"

    const-string v0, "Notification ID Added"

    .line 255
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderPriority(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification builder priority. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 343
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Notification Priority Added"

    .line 344
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderSend()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send the notification that you build"
    .end annotation

    .line 372
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    iget v1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:I

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string v0, "NotificationComponent"

    const-string v1, "Notification Send"

    .line 373
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderStart(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start building a new notification"
    .end annotation

    const/4 v0, 0x0

    .line 242
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->IMDN6rSQcZszgVNpJJVzEqq6OCV4rs9tTZyufLfJdSMnHOCoW11dHNeXoNpXCGNt:I

    .line 243
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 245
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108009b

    .line 246
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 247
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 248
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v2, v1

    const-string v1, ""

    invoke-direct {p0, v1}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p2, v2, v1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string p2, "Notification Building Started"

    .line 249
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderStartValue(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the start value of the notification."
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-direct {p0, p1}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v1, v3, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Notification Start Value Added"

    .line 261
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final NotificationBuilderVisibility(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Set the notification builder visibility. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 363
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    const-string p1, "NotificationComponent"

    const-string v0, "Notification Visiblity Added"

    .line 364
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Priority()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Priority of the notification"
    .end annotation

    const-string v0, "NotificationComponent"

    const-string v1, "Notification Priority returned"

    .line 125
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    return v0
.end method

.method public final Priority(I)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_priority"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the priority level. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    .line 112
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 109
    iput p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    goto :goto_0

    .line 106
    :cond_1
    iput v2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 103
    iput p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    goto :goto_0

    .line 100
    :cond_3
    iput v1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    goto :goto_0

    .line 97
    :cond_4
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    :goto_0
    const-string p1, "NotificationComponent"

    const-string v0, "Notification Priority set"

    .line 115
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final SendAdvancedNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a advanced notification (Android Wear Support)"
    .end annotation

    .line 198
    new-instance p5, Landroidx/core/app/NotificationCompat$Builder;

    iget-object p6, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p5, p6, v0}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 199
    invoke-virtual {p5, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 200
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const p3, 0x108009b

    .line 201
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 203
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    .line 204
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 p3, 0x1

    .line 205
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    long-to-int p6, p5

    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 p5, 0x0

    invoke-static {p3, p6, p4, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 207
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p1, "NotificationComponent"

    const-string p2, "Advanced Notification Send"

    .line 208
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final SendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a notification"
    .end annotation

    .line 75
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108009b

    .line 79
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 80
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    .line 81
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 83
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->context:Landroid/content/Context;

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 85
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p1, "NotificationComponent"

    const-string p2, "Notification Send"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final Visiblity()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Visiblity of the notification"
    .end annotation

    const-string v0, "NotificationComponent"

    const-string v1, "Notification Visibity returned"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    return v0
.end method

.method public final Visiblity(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the visibility property. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 146
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 143
    iput p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 140
    iput p1, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    goto :goto_0

    .line 137
    :cond_2
    iput v0, p0, Lcom/google/appinventor/components/runtime/NotificationComponent;->sOlouMp7GHVTpUn4YBGbQbUCVWieKOYZN8RaxLZS4Jb0AfyW3N6tLVaVFyvseW:I

    :goto_0
    const-string p1, "NotificationComponent"

    const-string v0, "Notification Visibity set"

    .line 149
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

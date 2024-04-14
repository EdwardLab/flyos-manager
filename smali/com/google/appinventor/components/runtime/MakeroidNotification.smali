.class public Lcom/google/appinventor/components/runtime/MakeroidNotification;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->EXPERIMENTAL:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "A component to send a notification to the users device"
    iconName = "images/notification.png"
    nonVisible = true
    version = 0x1
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# instance fields
.field private AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

.field private Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

.field private UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

.field private container:Lcom/google/appinventor/components/runtime/ComponentContainer;

.field private context:Landroid/content/Context;

.field private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

.field private x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 1

    .line 52
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "MakeroidNotification"

    .line 48
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    .line 54
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Priority(I)V

    .line 57
    invoke-virtual {p0, p1}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Visiblity(I)V

    .line 59
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS()V

    return-void
.end method

.method public static ScreenshotNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZLandroid/graphics/Bitmap;)V
    .locals 5

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    .line 213
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.action.VIEW"

    .line 214
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "image/*"

    .line 215
    invoke-virtual {v0, p4, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    new-instance v3, Landroidx/core/app/NotificationCompat$Builder;

    const-string v4, "MakeroidScreenshot"

    invoke-direct {v3, p0, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const p2, 0x108003f

    .line 220
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 221
    invoke-static {p0, p2, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 223
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 226
    new-instance p6, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p6}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    invoke-virtual {p6, p7}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p6

    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    :cond_0
    if-eqz p5, :cond_1

    .line 230
    new-instance p5, Landroid/content/Intent;

    invoke-direct {p5}, Landroid/content/Intent;-><init>()V

    const-string p6, "android.intent.action.SEND"

    .line 231
    invoke-virtual {p5, p6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p6, "android.intent.extra.STREAM"

    .line 232
    invoke-virtual {p5, p6, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p4, "EXTRA_DETAILS_ID"

    .line 233
    invoke-virtual {p5, p4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 234
    invoke-virtual {p5, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p4, 0x10000000

    .line 236
    invoke-static {p0, p2, p5, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    const p4, 0x1080052

    .line 238
    invoke-virtual {p1, p4, p3, p2}, Landroidx/core/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 241
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_2

    .line 242
    new-instance p2, Landroid/app/NotificationChannel;

    const/4 p3, 0x3

    const-string p4, "Makeroid"

    invoke-direct {p2, v4, p4, p3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string p3, "Makeroid Notification Channel"

    .line 243
    invoke-virtual {p2, p3}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 244
    const-class p3, Landroid/app/NotificationManager;

    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    .line 245
    invoke-virtual {p3, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 248
    :cond_2
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    .line 250
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p0, "MakeroidNotification"

    const-string p1, "Notification Send"

    .line 251
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 288
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "APP_INVENTOR_START"

    .line 290
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method private oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS()V
    .locals 4

    .line 296
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 297
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

    iget v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    const-string v3, "Makeroid"

    invoke-direct {v0, v1, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const-string v1, "Makeroid Notification Channel"

    .line 298
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 299
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 300
    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 303
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    return-void
.end method


# virtual methods
.method public AreNotificationsEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Check wether the app can send Notifications"
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    return v0
.end method

.method public BigPictureNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a normal notification"
    .end annotation

    const-string v0, "MakeroidNotification"

    const/4 v1, 0x0

    .line 184
    :try_start_0
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->container:Lcom/google/appinventor/components/runtime/ComponentContainer;

    invoke-interface {v2}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v2

    invoke-static {v2, p4}, Lcom/google/appinventor/components/runtime/util/MediaUtil;->getBitmapDrawable(Lcom/google/appinventor/components/runtime/Form;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 186
    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p4, v1

    .line 189
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x108009b

    .line 190
    invoke-virtual {v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 191
    invoke-virtual {v2, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 192
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance p3, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {p3}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>()V

    .line 194
    invoke-virtual {p3, p4}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p3

    .line 195
    invoke-virtual {p3, v1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p3

    .line 193
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 196
    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 197
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 198
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 199
    invoke-virtual {p2, p6}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    .line 200
    invoke-direct {p0, p5}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 p5, 0x0

    invoke-static {p3, p5, p4, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 202
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS()V

    .line 204
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p1, "Notification Send"

    .line 205
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public CancelAll()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel all Notifications"
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    const-string v0, "MakeroidNotification"

    const-string v1, "All Notifications Cancelled"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public CancelNotification(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Cancel a Notification with an id"
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationManagerCompat;->cancel(I)V

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Notification with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " canceled"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MakeroidNotification"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public NormalNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a normal notification"
    .end annotation

    .line 163
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108009b

    .line 164
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 166
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 168
    invoke-virtual {v0, p3}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p3

    .line 167
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 169
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 170
    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 171
    invoke-virtual {p2, p5}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    .line 172
    invoke-direct {p0, p4}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    const/4 p5, 0x0

    invoke-static {p3, p5, p4, p5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 174
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS()V

    .line 176
    iget-object p3, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p1, "MakeroidNotification"

    const-string p2, "Notification Send"

    .line 177
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Priority()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Priority of the notification"
    .end annotation

    const-string v0, "MakeroidNotification"

    const-string v1, "Notification Priority returned"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    return v0
.end method

.method public Priority(I)V
    .locals 6
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_priority"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the priority level. 1 = \"Default\", 2 = \"high\", 3 = \"low\", 4 = \"max\", 5 = \"min\""
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/16 v3, 0x18

    if-eq p1, v2, :cond_3

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    const/4 v5, 0x5

    if-eq p1, v1, :cond_1

    if-eq p1, v5, :cond_0

    const/4 p1, 0x0

    .line 94
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 95
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 96
    iput v4, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 88
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 89
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 90
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    goto :goto_0

    .line 82
    :cond_1
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 83
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 84
    iput v5, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    goto :goto_0

    :cond_2
    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 77
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 78
    iput v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    goto :goto_0

    .line 70
    :cond_3
    iput v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 71
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_4

    .line 72
    iput v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->UrHg3UsNYt3X05ajxF1PWwC50ZBDolbLcJ2ocoWwvC2Xge7OsQI3Tkbaki1SJsz5:I

    :cond_4
    :goto_0
    const-string p1, "MakeroidNotification"

    const-string v0, "Notification Priority set"

    .line 100
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public SimpleNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Send a simple notification"
    .end annotation

    .line 144
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->Qo6hTp4u7pOnq5WtKfNdQM86FuI5n4weAQCyrgAeimDlOrP2dP7U8KFwjrDIHyb:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x108009b

    .line 145
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 147
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 149
    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p2

    .line 148
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->x3f9w7ebWg4JdbY2pEu0Z0lXjvABueY447WcywG8LgLVE2M0xoLkgBxoCJuK6Oc:I

    .line 150
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget p2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    .line 151
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 152
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->context:Landroid/content/Context;

    const-string v0, ""

    .line 153
    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 155
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/MakeroidNotification;->oDikMCstR6tlR2dTNi9SmHhjXnOW8gvVc7RVCpamOJDxjRqCmBMqmRVoMYhtpjS()V

    .line 157
    iget-object p2, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroidx/core/app/NotificationManagerCompat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v1, v0

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p2, v1, p1}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    const-string p1, "MakeroidNotification"

    const-string p2, "Notification Send"

    .line 158
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Visiblity()I
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "The Visibility of the notification"
    .end annotation

    const-string v0, "MakeroidNotification"

    const-string v1, "Notification Visibility returned"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget v0, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    return v0
.end method

.method public Visiblity(I)V
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1"
        editorType = "notification_visibility"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the visibility property. 1 = \"public\", 2 = \"private\", 3 = \"secret\"."
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 126
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 123
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/google/appinventor/components/runtime/MakeroidNotification;->AVN1jEMUjULIMlY3UvkBgLtaEKU1Kh7f4RsRo8tJ6i96580YKtIBKDpaBPwG4gsl:I

    :goto_0
    const-string p1, "MakeroidNotification"

    const-string v0, "Notification Visibility set"

    .line 129
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.class public final Lcom/google/appinventor/components/runtime/Download;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "SourceFile"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->CONNECTIVITY:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "The Download component is a non-visible component that allows users to download any file to the device"
    iconName = "images/download.png"
    nonVisible = true
    version = 0x2
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/UsesPermissions;
    value = {
        "android.permission.INTERNET",
        "android.permission.WRITE_EXTERNAL_STORAGE",
        "android.permission.DOWNLOAD_WITHOUT_NOTIFICATION"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/appinventor/components/runtime/Download$a;,
        Lcom/google/appinventor/components/runtime/Download$b;
    }
.end annotation


# instance fields
.field private B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:J

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

.field private DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Z

.field private G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Z

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

.field private IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

.field private YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

.field private ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

.field private final activity:Landroid/app/Activity;

.field private final context:Landroid/content/Context;

.field private gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Z

.field private final hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/BroadcastReceiver;

.field private final hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DownloadManager;

.field private tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

.field private vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

.field private final vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 5

    .line 73
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    const-string v0, "Downloading file.."

    .line 60
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    const-string v0, "Download.."

    .line 61
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    const-string v0, ""

    .line 62
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    const-string v0, "NewFile.png"

    .line 63
    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Z

    const/4 v1, 0x1

    .line 65
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Download;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    .line 66
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Download;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    .line 67
    iput-boolean v1, p0, Lcom/google/appinventor/components/runtime/Download;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Z

    .line 69
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    .line 70
    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Z

    .line 360
    new-instance v0, Lcom/google/appinventor/components/runtime/Download$3;

    invoke-direct {v0, p0}, Lcom/google/appinventor/components/runtime/Download$3;-><init>(Lcom/google/appinventor/components/runtime/Download;)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->vSp02fkBXgM8EI0gm0rKWXHQ6wdQINJBQuAtCR15YU8g4XNqVKV8r32SYxkQYxkq:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v1, Lcom/google/appinventor/components/runtime/Download$4;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Download$4;-><init>(Lcom/google/appinventor/components/runtime/Download;)V

    iput-object v1, p0, Lcom/google/appinventor/components/runtime/Download;->hR11jdqaRrvBRiBFd4KN6gI7d8MNQVP5Yc7fufDZjGGTeTxaualejjrhiR1Iz2xO:Landroid/content/BroadcastReceiver;

    .line 74
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/google/appinventor/components/runtime/Download;->context:Landroid/content/Context;

    .line 75
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$context()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->activity:Landroid/app/Activity;

    .line 76
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "download"

    .line 79
    invoke-virtual {v2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DownloadManager;

    const-string p1, "Download"

    const-string v0, "Download Extension Created"

    .line 81
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/google/appinventor/components/runtime/Download;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:J

    return-wide v0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)Landroid/app/Activity;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Download;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)Landroid/app/DownloadManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DownloadManager;

    return-object p0
.end method

.method static synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME(Lcom/google/appinventor/components/runtime/Download;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Download;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V

    return-void
.end method

.method private hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Z
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 346
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Download"

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Network connections is available: true"

    .line 348
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-string v0, "Network connections is available: false"

    .line 351
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    if-nez v0, :cond_1

    const-string v0, "SuppressWarnings is false. Show now a toast message. Missing internet connection."

    .line 353
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->context:Landroid/content/Context;

    const-string v2, "Please check your internet connection"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V
    .locals 5

    const-string v0, "Download"

    const/4 v1, 0x1

    .line 268
    :try_start_0
    new-instance v2, Landroid/app/DownloadManager$Request;

    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Download;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 269
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 270
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 271
    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Download;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 272
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Z

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    .line 273
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 276
    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 278
    :goto_0
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Z

    if-eqz v3, :cond_1

    .line 279
    invoke-virtual {v2}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 281
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_3

    .line 282
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    if-eqz v3, :cond_2

    .line 283
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setRequiresCharging(Z)Landroid/app/DownloadManager$Request;

    .line 285
    :cond_2
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Z

    if-eqz v3, :cond_3

    .line 286
    invoke-virtual {v2, v1}, Landroid/app/DownloadManager$Request;->setRequiresDeviceIdle(Z)Landroid/app/DownloadManager$Request;

    .line 289
    :cond_3
    iget-object v3, p0, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/appinventor/components/runtime/Download;->B8WBXPBCF2jGfUDZZU2zV5EYdqbUBu0lAZ0THCEqYyuE8VACR9dY7rDnwBIqh64T:J

    .line 291
    new-instance v2, Lcom/google/appinventor/components/runtime/Download$2;

    invoke-direct {v2, p0}, Lcom/google/appinventor/components/runtime/Download$2;-><init>(Lcom/google/appinventor/components/runtime/Download;)V

    invoke-static {v2}, Lcom/google/appinventor/components/runtime/util/AsynchUtil;->runAsynchronously(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/google/appinventor/components/runtime/errors/PermissionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 332
    iget-boolean v3, p0, Lcom/google/appinventor/components/runtime/Download;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    if-nez v3, :cond_4

    .line 333
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->context:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    return-void

    :catch_1
    move-exception v1

    .line 330
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Download;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v2, p0, v0, v1}, Lcom/google/appinventor/components/runtime/Form;->dispatchPermissionDeniedEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;Lcom/google/appinventor/components/runtime/errors/PermissionException;)V

    return-void
.end method


# virtual methods
.method public final AllowedOverRoaming(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set whether this download may proceed over a roaming connection."
    .end annotation

    .line 121
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AllowedOverRoaming: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Z

    return-void
.end method

.method public final AllowedOverRoaming()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the allowed over roaming setting."
    .end annotation

    .line 182
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->gti6bIqu0aXgALoDtkq1foMnPcdzXO0EAPAgw4lcaEF132GirFLns82VqwKc8x6R:Z

    return v0
.end method

.method public final Description()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the description text."
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    return-object v0
.end method

.method public final Description(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Downloading file.."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the description that you will see in the download notification."
    .end annotation

    .line 93
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Description text is: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Ljava/lang/String;

    return-void
.end method

.method public final Download()V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Start the download of the given download url."
    .end annotation

    .line 248
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Download;->sSQuIBUVrx5rcdxHqHgqC6bPLuuDnxnBF7e7BJeOxmxr54l6ArzFZvC3SGBTuUdt()V

    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->form:Lcom/google/appinventor/components/runtime/Form;

    new-instance v1, Lcom/google/appinventor/components/runtime/Download$1;

    invoke-direct {v1, p0}, Lcom/google/appinventor/components/runtime/Download$1;-><init>(Lcom/google/appinventor/components/runtime/Download;)V

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v2, v1}, Lcom/google/appinventor/components/runtime/Form;->askPermission(Ljava/lang/String;Lcom/google/appinventor/components/runtime/PermissionResultHandler;)V

    :cond_1
    return-void
.end method

.method public final DownloadComplete(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect if the download is successful finished. You can use the \"filePath\" to use the downloaded file into your app. The \"fileSize\" will be returned in bytes."
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 212
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    const-string p1, "DownloadComplete"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final DownloadProgress(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Get the progress (in percentage) of the current download task."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 341
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "DownloadProgress"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final DownloadUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the download url."
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    return-object v0
.end method

.method public final DownloadUrl(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = ""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here the url to the file that you want to download."
    .end annotation

    .line 107
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DownloadUrl text is: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->ZXVyhZW2wwbAysjXrMReFP00vcRkftFV6dFiSCOUB0OBlMJVjuhF9XlRGX7w6PdR:Ljava/lang/String;

    return-void
.end method

.method public final GetFileSize(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Get the file size (in bytes) of a file that is stored online or on your device. The block detect automatic if it is a online path or not. You will get the result in the \"Got File Size\" event."
    .end annotation

    const-string v0, "http"

    .line 234
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 235
    invoke-direct {p0}, Lcom/google/appinventor/components/runtime/Download;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/google/appinventor/components/runtime/Download$b;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/Download$b;-><init>(Lcom/google/appinventor/components/runtime/Download;B)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Download$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 238
    :cond_0
    invoke-virtual {p0, v2}, Lcom/google/appinventor/components/runtime/Download;->GotFileSize(I)V

    return-void

    .line 241
    :cond_1
    new-instance v0, Lcom/google/appinventor/components/runtime/Download$a;

    invoke-direct {v0, p0, v2}, Lcom/google/appinventor/components/runtime/Download$a;-><init>(Lcom/google/appinventor/components/runtime/Download;B)V

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/Download$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public final GotFileSize(I)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect file size is ready to be used."
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "GotFileSize"

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final NotificationClicked()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "Event to detect when the user clicks on a running download, either from a system notification or from the downloads UI."
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "NotificationClicked"

    .line 217
    invoke-static {p0, v1, v0}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final RequiresCharging(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specify that to run this download, the device needs to be plugged in. Works only for devices with api >= 24."
    .end annotation

    .line 149
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequiresCharging: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    return-void
.end method

.method public final RequiresCharging()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the requires charging setting."
    .end annotation

    .line 207
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->IhlDYVsQmgat6F3NXqRok975lHQlAvyJICX3QHDdE383xYIGTapMORiCm1KjyWCi:Z

    return v0
.end method

.method public final RequiresDeviceIdle(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "False"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Specify that to run, the download needs the device to be in idle mode. Idle mode is a loose definition provided by the system, which means that the device is not in use, and has not been in use for some time. Works only for devices with api >= 24."
    .end annotation

    .line 156
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequiresDeviceIdle: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Z

    return-void
.end method

.method public final RequiresDeviceIdle()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the requires device idle setting."
    .end annotation

    .line 202
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Z

    return v0
.end method

.method public final SaveFileAs()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the save file as text."
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    return-object v0
.end method

.method public final SaveFileAs(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "NewFile.png"
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set here the new filename for the file that you want to download."
    .end annotation

    .line 114
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveFileAs text is: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->vB3WjEtL56PUGm0spJ96S19MI1O4vPR6yju8tUYcKrC4atk0AV5GbVcHQNB7BlIK:Ljava/lang/String;

    return-void
.end method

.method public final ScanningByMediaScanner(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If the file to be downloaded is to be scanned by MediaScanner."
    .end annotation

    .line 142
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanningByMediaScanner: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Z

    return-void
.end method

.method public final ScanningByMediaScanner()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the scanning by MediaScanner setting."
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->G9FdWvm6zShqpzDC2UOqX6MiQExLolZTefPBjzVvfkE9Kp2rmQld5rkb2wriBYfL:Z

    return v0
.end method

.method public final ShowDownload()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "You can open the download folder with this block."
    .end annotation

    .line 227
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW_DOWNLOADS"

    .line 228
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/Download;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v1, v0}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final ShowNotification(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Control whether a system notification is posted by the download manager while this download is running or when it is completed."
    .end annotation

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShowNotification: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    return-void
.end method

.method public final ShowNotification()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the show notification setting."
    .end annotation

    .line 192
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->tj0MDuMmBVyFcp8vwXpkfd0RnoyqL9aUR0zh2QG1qIbcD4cqzuxOkXiR3Ef5Sjag:Z

    return v0
.end method

.method public final SuppressWarnings(Z)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "If false you will see a toast message with a error message when a error is occurred."
    .end annotation

    .line 128
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SuppressWarnings: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Download;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    return-void
.end method

.method public final SuppressWarnings()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the suppress warnings setting."
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Download;->YP4juQGK8ZTsNMOy2BKg810SeLJ3amlj2BQC8tc7uqP2LdhyRsu8lUHvdJ0v9u:Z

    return v0
.end method

.method public final Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Return the title text."
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    return-object v0
.end method

.method public final Title(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "Download.."
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "Set the title that you will see in the download notification."
    .end annotation

    .line 100
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Title text is: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/Download;->DmQGLROFyZ9Eo0RSsJcpZNxJZjgcsPDfYPi3awNwmyyErT71sGU5mvgG4PDW3yL:Ljava/lang/String;

    return-void
.end method

.method public final isDownloadManagerAvailable()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        description = "This function is deprecated. Do not use it anymore. We will remove it in the future. Since we support min API 14 the download manager is by default available. The download manager was added in API 9."
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->upgradeCompanion(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

.field private synthetic be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 78
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    const-string v1, "/"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 79
    array-length v1, v0

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    .line 80
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->be5lhYh9WoRxaz90fLCwutY7P2UOOSHvgVGbV0kf2Fz5aZ7Z6ntVyTwptyFUH2WW:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$2;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    invoke-static {v1, v4, v0, v2}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-static {}, Lcom/google/appinventor/components/runtime/Form;->getActiveForm()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v1

    .line 84
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v1}, Lcom/google/appinventor/components/runtime/Form;->$context()Landroid/app/Activity;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".provider"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const-string v4, "application/vnd.android.package-archive"

    .line 87
    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {v1, v2}, Lcom/google/appinventor/components/runtime/Form;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 91
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ERROR_UNABLE_TO_GET"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "Unable to Install new Companion Package."

    .line 92
    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->sendError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

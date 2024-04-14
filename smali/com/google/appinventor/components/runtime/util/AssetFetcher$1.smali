.class final Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/util/AssetFetcher;->fetchAssets(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

.field private synthetic FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

.field private synthetic Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

.field private synthetic WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->CjxGCkQSTAjvR1nNlMdbKil40XRwRktLBU1cWxZmNEv2KEZKq1wwOgz5H2xrzq8N:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/ode/download/file/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->Sa0jypR6YD5j7ayqbvuoqzuaJRSrX8yjkvtL3QPciDNsj5IsamevCs24OFmH7uZQ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->WXrxsncNaI12QELoywiijcLROkSQSR7QVFw2zT3BVYf147C9TZQ4jsxpxFZAUav:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/google/appinventor/components/runtime/util/AssetFetcher;->access$000(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/util/AssetFetcher$1;->FrTvqStiZO2F73haZ4c62UUmwpyiTR0Q3saFC1nYzrvmpyGkgyFFxTtzoQAKnoll:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/appinventor/components/runtime/util/RetValManager;->assetTransferred(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

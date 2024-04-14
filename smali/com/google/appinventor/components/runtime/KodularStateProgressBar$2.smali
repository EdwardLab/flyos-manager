.class final Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kofigyan/stateprogressbar/listeners/OnStateErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/appinventor/components/runtime/KodularStateProgressBar;-><init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;


# direct methods
.method constructor <init>(Lcom/google/appinventor/components/runtime/KodularStateProgressBar;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStateError(Lcom/kofigyan/stateprogressbar/StateProgressBar;Ljava/lang/String;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/google/appinventor/components/runtime/KodularStateProgressBar$2;->hxYOFxFjLpN1maJuWNxUV40nExCGxsxkDPOTgtzMu4zlZCQb3bPlKsXo1SYJg6ME:Lcom/google/appinventor/components/runtime/KodularStateProgressBar;

    invoke-virtual {p1, p2}, Lcom/google/appinventor/components/runtime/KodularStateProgressBar;->ErrorOccurred(Ljava/lang/String;)V

    return-void
.end method

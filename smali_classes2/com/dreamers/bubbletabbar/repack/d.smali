.class final synthetic Lcom/dreamers/bubbletabbar/repack/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final a:Lcom/dreamers/bubbletabbar/repack/c;


# direct methods
.method constructor <init>(Lcom/dreamers/bubbletabbar/repack/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamers/bubbletabbar/repack/d;->a:Lcom/dreamers/bubbletabbar/repack/c;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/dreamers/bubbletabbar/repack/d;->a:Lcom/dreamers/bubbletabbar/repack/c;

    invoke-static {v0, p1}, Lcom/dreamers/bubbletabbar/repack/c;->a(Lcom/dreamers/bubbletabbar/repack/c;Landroid/view/View;)V

    return-void
.end method

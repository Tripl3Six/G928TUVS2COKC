.class final Lcom/myscript/atk/sltw/s;
.super Ljava/lang/Object;
.source "SingleLineTextWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/myscript/atk/sltw/SingleLineTextWidget;


# direct methods
.method constructor <init>(Lcom/myscript/atk/sltw/SingleLineTextWidget;F)V
    .locals 0

    iput-object p1, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    iput p2, p0, Lcom/myscript/atk/sltw/s;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget$OnDataTrackingListener;->onDataTrackingJoinGesture()V

    :cond_0
    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/f/a/b;

    move-result-object v0

    iget v1, p0, Lcom/myscript/atk/sltw/s;->a:F

    iget-object v2, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v2}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->c(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/myscript/atk/sltw/f/a/b;->b(FZ)I

    move-result v0

    iget-object v1, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v1}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->b(Lcom/myscript/atk/sltw/SingleLineTextWidget;)Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/myscript/atk/sltw/SingleLineTextWidgetApi$OnGestureListener;->onJoinGesture(I)V

    :cond_1
    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->d(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    iget-object v0, p0, Lcom/myscript/atk/sltw/s;->b:Lcom/myscript/atk/sltw/SingleLineTextWidget;

    invoke-static {v0, v3}, Lcom/myscript/atk/sltw/SingleLineTextWidget;->e(Lcom/myscript/atk/sltw/SingleLineTextWidget;Z)Z

    return-void
.end method

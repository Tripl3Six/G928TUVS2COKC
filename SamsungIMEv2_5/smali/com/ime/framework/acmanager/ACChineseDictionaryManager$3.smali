.class Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;
.super Ljava/lang/Object;
.source "ACChineseDictionaryManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->connected(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

.field final synthetic val$connectionType:I

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;II)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    iput p2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->val$type:I

    iput p3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->val$connectionType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->this$0:Lcom/ime/framework/acmanager/ACChineseDictionaryManager;

    # getter for: Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->mConnectionCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/ime/framework/acmanager/ACChineseDictionaryManager;->access$200(Lcom/ime/framework/acmanager/ACChineseDictionaryManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;

    iget v2, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->val$type:I

    iget v3, p0, Lcom/ime/framework/acmanager/ACChineseDictionaryManager$3;->val$connectionType:I

    invoke-interface {v0, v2, v3}, Lcom/nuance/swypeconnect/ac/ACManager$ACConnectionCallback;->connected(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

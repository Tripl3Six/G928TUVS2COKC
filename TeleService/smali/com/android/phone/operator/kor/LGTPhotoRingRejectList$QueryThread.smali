.class Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;
.super Ljava/lang/Thread;
.source "LGTPhotoRingRejectList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;


# direct methods
.method private constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;-><init>(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v10

    const/16 v0, 0x64

    iput v0, v10, Landroid/os/Message;->what:I

    const/4 v7, 0x0

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->hasUnknownItem()Z
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$400(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v9, v12

    :cond_0
    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread start: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_6

    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->reject_num:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # invokes: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$600(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v11, :cond_3

    const/4 v11, 0x0

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$700()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$500(Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;

    # getter for: Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->defaultName:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->access$700()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$AutoRejectItem;->contact_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v11, 0x1

    goto :goto_1

    :cond_5
    const/4 v11, 0x1

    goto :goto_1

    :catch_0
    move-exception v8

    const-string v0, "LGTPhotoRingRejectList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    if-eqz v7, :cond_6

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    iget-object v0, p0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList$QueryThread;->this$0:Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;

    iget-object v0, v0, Lcom/android/phone/operator/kor/LGTPhotoRingRejectList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "LOG_TAG"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QueryThread end: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v12}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.class Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;
.super Ljava/lang/Object;
.source "SecAutoRejectVideoCallList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AutoRejectItem"
.end annotation


# instance fields
.field public checked:I

.field public contact_name:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public matched:I

.field public reject_num:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;


# direct methods
.method public constructor <init>(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1
    .param p2    # Ljava/lang/String;
    .param p3    # Ljava/lang/String;
    .param p4    # I
    .param p5    # I

    iput-object p1, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->this$0:Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->reject_num:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->id:Ljava/lang/String;

    iput p4, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->checked:I

    iput p5, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->matched:I

    # getter for: Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->defaultName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;->access$500(Lcom/android/phone/callsettings/SecAutoRejectVideoCallList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/callsettings/SecAutoRejectVideoCallList$AutoRejectItem;->contact_name:Ljava/lang/String;

    return-void
.end method

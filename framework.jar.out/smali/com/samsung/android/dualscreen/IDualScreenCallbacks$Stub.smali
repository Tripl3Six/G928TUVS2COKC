.class public abstract Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDualScreenCallbacks.java"

# interfaces
.implements Lcom/samsung/android/dualscreen/IDualScreenCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/dualscreen/IDualScreenCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.dualscreen.IDualScreenCallbacks"

.field static final TRANSACTION_screenFocusChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.dualscreen.IDualScreenCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/dualscreen/IDualScreenCallbacks;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.samsung.android.dualscreen.IDualScreenCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/dualscreen/IDualScreenCallbacks;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/dualscreen/IDualScreenCallbacks;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    const-string v2, "com.samsung.android.dualscreen.IDualScreenCallbacks"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "com.samsung.android.dualscreen.IDualScreenCallbacks"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/DualScreen;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/DualScreen;

    :goto_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/IDualScreenCallbacks$Stub;->screenFocusChanged(Lcom/samsung/android/dualscreen/DualScreen;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

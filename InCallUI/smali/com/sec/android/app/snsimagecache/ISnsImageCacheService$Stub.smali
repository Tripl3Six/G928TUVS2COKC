.class public abstract Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;
.super Landroid/os/Binder;
.source "ISnsImageCacheService.java"

# interfaces
.implements Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    :sswitch_0
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->registerCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_2
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->unregisterCallback(Lcom/sec/android/app/snsimagecache/ISnsImageCacheCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :sswitch_3
    const-string v3, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->getImage(ILjava/lang/String;)I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string v5, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->cancelAllImages(I)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_5
    const-string v5, "com.sec.android.app.snsimagecache.ISnsImageCacheService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/snsimagecache/ISnsImageCacheService$Stub;->cancelImageByReqId(II)Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v2, :cond_1

    move v3, v4

    :cond_1
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method

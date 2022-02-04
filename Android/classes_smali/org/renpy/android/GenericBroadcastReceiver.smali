.class public Lorg/renpy/android/GenericBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GenericBroadcastReceiver.java"


# instance fields
.field listener:Lorg/renpy/android/GenericBroadcastReceiverCallback;


# direct methods
.method public constructor <init>(Lorg/renpy/android/GenericBroadcastReceiverCallback;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lorg/renpy/android/GenericBroadcastReceiver;->listener:Lorg/renpy/android/GenericBroadcastReceiverCallback;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object v0, p0, Lorg/renpy/android/GenericBroadcastReceiver;->listener:Lorg/renpy/android/GenericBroadcastReceiverCallback;

    invoke-interface {v0, p1, p2}, Lorg/renpy/android/GenericBroadcastReceiverCallback;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

#!/bin/ash

libNVMepatch()
{
TARGFILE="/usr/lib/libsynonvme.so.1"
PCISTR="\x00\x30\x30\x30\x30\x3A\x30\x30\x3A\x31\x33\x2E\x31\x00"
PHYSDEVSTR="\x00\x50\x48\x59\x53\x44\x45\x56\x50\x41\x54\x48\x00\x00\x00\x00\x00\x00"
PCINEW="\x00\x6E\x76\x6D\x65\x00\x00\x00\x00\x00\x00\x00\x00\x00"
PHYSDEVNEW="\x00\x50\x48\x59\x53\x44\x45\x56\x44\x52\x49\x56\x45\x52\x00\x00\x00\x00"
#
COUNT=`grep -obUaP "$PCISTR" $TARGFILE | wc -l`
if [ $COUNT == 0 ]; then
  echo "patchnvme: can't find PCI reference (already patched?)"
  exit
fi
if [ $COUNT -gt 1 ]; then
  echo "patchnvme: multiple PCI reference! abort"
  exit
fi
COUNT=`grep -obUaP "$PHYSDEVSTR" $TARGFILE | wc -l`
if [ $COUNT == 0 ]; then
  echo "patchnvme: can't find PHYSDEV reference (already patched?)"
  exit
fi
if [ $COUNT -gt 1 ]; then
  echo "patchnvme: multiple PHYSDEV reference! abort"
  exit
fi
[ -f $TARGFILE.bak ] || cp $TARGFILE $TARGFILE.bak
if [ $? == 1 ]; then
  echo "patchnvme: can't create backup (sudo?)"
  exit
fi
sed "s/$PCISTR/$PCINEW/g" $TARGFILE >$TARGFILE.tmp
if [ $? == 1 ]; then
  echo "patchnvme: patch could not be applied (sudo?)"
  exit
fi
sed "s/$PHYSDEVSTR/$PHYSDEVNEW/g" $TARGFILE.tmp >$TARGFILE
if [ $? == 1 ]; then
  echo "patchnvme: patch could not be applied (sudo?)"
  exit
fi
echo "patchnvme: success"
rm $TARGFILE.tmp 2>/dev/null
}

RUNAS="root"

case $1 in
    start)
	libNVMepatch
        exit 0
        ;;
    stop)
	libNVMepatch
        exit 0
        ;;
    status)
        exit 0
        ;;
    log)
        exit 1
        ;;
    *)
        exit 1
        ;;
esac

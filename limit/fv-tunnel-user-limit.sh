#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY�nH ��1p���?�����@   `�=ِ�  h  CTji���444��   @  �����   �   � A�@4�4�d�4�LF� ($ɴ���z�� F��   pd4�LCMA�a@h��h  *��SdhI�dj��'��zi��i�=F�=M?P2L������������3��}����0H����B�x�y���J/��3��թ�������AS|H�B ��$��%���w)�!O&W"��C� .�h˱�%�G���ha @Nd"�� �~\����kJR��ǖ����M��-�rǴ�oe��JdS���6����lBh���������n�W;&rLc��Zj��ǒ��,D*�2<�@r)��7��-CD��dȄ��֗r��0��������a��6,">[*��P�V���G2U�<�w���6|�����ϞX04G�Y�ьĴ���z-�\�E
9Hû3)��xf�9IYO��L��n/����wF c\^PI�J��,�	���Z�ި���G� I&!8�MT���-�DD����Za�� zFsT���\Iq$��l�����*�����a�����,G�����Qh��?�c��fnB�Z}�-e�<�WB������a�Mg�����ݭ���آ�����&�~�pߡ%���7%�?�擌u�0��e�u���M␺��*~|��"-o���jG��S�$�aU]��_��8<C
w�r>GI��\?y��#Aoèc�����3ǅ+M9��2�����b�WF'@�>�a|��4�ZE���#C0�|h��]K��܋���`$k{4oR��2=���҆�^�6��:
�Y}d�Yp����79ቘ��U�,�\��Dje��1����sA6$��_9"Fö1�ffgm)3��D#�����k��]6pr�oA�o#���;�\;��nM�ue�����C�_�C��Ph��&^��Q�Jv��c����bH�?�rMq�#�+��i��%׻Ԁ�(U
��٣.X�A�q�Y���~"��|�_Փ��{H�R&\RG�����i��5�������Y���	{~�e��u�ҏ�L�C��ƅ,Q4�J�4"�Tcct�8&Qg�bS
��D���F�2��4uH�~�C��֤���v����	Cz�C�FhG�������rf�]�k�Ѽ��ȅ!?cA/N����bt���H����i:I�-.D1>m��)3Bev�VWҏ�*����Yd|�kp�H:l��dCX:���*2��V4N����i��i�p��^5"$\k�P�im�AT*�HF�L."�F��$�J��DD�F�p��Q�p�/�9՚SY~v;�w��%��k5CA�6�Ǐ�g46�>���^�CQ��q�إU�R�M&�%�&�z-�^�z1��r���FZM������f�胦hd���=h��  H�$g�]��BC5� L